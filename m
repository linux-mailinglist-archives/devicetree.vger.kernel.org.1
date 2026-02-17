Return-Path: <devicetree+bounces-265963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PPLFtX7k2n4+AEAu9opvQ
	(envelope-from <devicetree+bounces-265963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:25:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9300148C83
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:25:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C9763017052
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 05:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C37127FB3C;
	Tue, 17 Feb 2026 05:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nP+0NvI+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aSL4Fg5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951AA3EBF2F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771305936; cv=none; b=kZdcqM0Fusy0UvmPXkz4PTg6dHo9JWiGUM+pyDT1WFCtJP9bUW9x7qVNRTDq5ytEVZrCMkc6VLs8VxhrDdA5f/u0+4CupXCBuRc9itijITzjqjLAIeYWtleJl4A3K6banT8meaOGh8KmgBJD7fLkuXsSpwNns6lX2NF/E/pJlFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771305936; c=relaxed/simple;
	bh=4IUnM654Ar4fSWUu/NzKK40+sy6o/VU5RUmxIfrKHQY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eUpMHVCYUshpm93RMblgnquFY581AFWWJbW9+9rpT7hLZB3dy3KKxwOTpemcVpma7wwBFdFB1RGXweWvck5GY+3xOvCN28/h1ikMNm76xhQEqcsy3hrWlDzBu3kzcVWey4GMGZleTpIj3qk8kXkJHQUbodoHq3Ad8I7hk5/O2Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nP+0NvI+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aSL4Fg5s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H03BgD1759447
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=LYIcSfbMA1RittLgd3Rfimx4PDL61+MOKk5
	Kw+KK4GY=; b=nP+0NvI+71qihla3A77mg1akS8jEHn2RMxf09UQEXqxB7BDFd5t
	w/dIjc4G+wbQZbGnlQUMeta0guiX/ZnGyM1WQgLubOmTPhZ9J0ttpaETYO28Jx2S
	Iw0UcihKDfzi4YBNd6gQRiJ31qVYPMGomz2m+2erxpVKol8hH04y71TfPiy0msDL
	NXDVZd+cGuQmkTkc3z+GLbX/7ZgR09jl4cA195ysQPsnxT49vmGZ/RLXBVKV9WTr
	No14jILiNWmUo9vEqRQLRYFLc3/ezxNgbgN2+QtnYf3eTYvwN0eerAD4HV5CqMl5
	rXD1TIbreWQp1uz9wtnL2jaxSrjEgvO5uLg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbnv9kd2b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:33 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6df833e1efso13229179a12.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 21:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771305932; x=1771910732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LYIcSfbMA1RittLgd3Rfimx4PDL61+MOKk5Kw+KK4GY=;
        b=aSL4Fg5sbErwuWCPrmYp0knVldiQC/QJruiBhhYOgnlNypnNQ1eaZwu9PI0iRPfPxl
         hvOATb3Gk79u5XS+VkZKanFSW3YjyBcXmnsv/a76kmVzfD/LALib6+b1nhayU0neEYvP
         4c7IaoAjM/idoK1j2fxdMTncURLWzNYSYLUGkNWUryaE/437bvuPssBQvKOp9y/Iulj0
         5dTmB9Ze0X2apsbFneppwrRf6cxSet7Je+vpCoYx6TyJuWSYVO8RSfSw+I1E/gGBv/tq
         Tc6a0ZPROOEyPAJEBJTpWN0Ex+g1LCK2CmLiwbttxXfWaCTdeC+jRYT9hj95pHa7Nn5K
         aYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771305932; x=1771910732;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LYIcSfbMA1RittLgd3Rfimx4PDL61+MOKk5Kw+KK4GY=;
        b=YtPD0AKd7F5MVTMN2VnYrON9KgO61rFkvEdant8h/2kZw/KgkcgUxitnAEdjlkqMHq
         bv6zbutP9hEp5F0FC/CMqdZrYr7M0agOR3O3xpPle6xM9/Rv5B+oNHT6scGu0OzKAogc
         NfTa5lPtCBygNRfhiovJvs0pOu5otZay0N7gzhRGpsZ5d3+wKmPiVdBUUgUCmVVgQHGG
         FsRRs3S920jXPbfV2hQi7ABLrgTirqry4wGotZa/Lz6srqOXPWkNQzryYd9OAG5NaJLh
         1EjjCFMjn7Ja7ZAds1audmDoWG0fF0KtkVWqOSsZTBDgAV6kjhDiw6DURfK1nnE7X7Nv
         sn0A==
X-Forwarded-Encrypted: i=1; AJvYcCX3UWrNp7zwRRSY15AWKqYwnE8vWeb9NPdJk70OA0DWcflKwFUXv3eRHi/GxzFOCq/B4nrWVGIJQSbz@vger.kernel.org
X-Gm-Message-State: AOJu0YxT/EyiJdZ1jcVwEoRytOr2Sz8j/yk+8FcrUQlDtwVDCIit2E1S
	Qc0RZrzyRFZPoBQc09WuWQM0cZJqPkl39c+Api+T0Ie23r4a58ooAmEHLfcBTlS36pMVJ9zadwU
	kArkA1QyuhRnqExPZcAShh+jTeLCqfdJf9UILDpWDk2B74m/TrARPB1SjHoAE7kg4
X-Gm-Gg: AZuq6aLHQnoK+SUZQUINNPd2scWll9H19G39PAP4i676FC1LqMnXqVEfGZV/uvYl5kI
	yNMBcTz2Wqf6ODvtZFCHDQbOmdjPrn2xsVmkO87U5OOmpqH3EIjslIyxcyfcCZCRixg2kw4wgOn
	zPW/Lc7i8eRnV3NDoDoiPoiiAKfq/RUImsNHvgrxvgoXAP/mqtYczVThVjpToRh/so5i5xDzRr6
	PI0ITa1srGq85BMDUekB2LiiJ6sv2I6RERGyy38c+EuiXM+vC9Pdo4kkjXmF59rntnMIbkgg5a1
	7AfB7jC6JjBI4+PWc4JpjkQSDSJI750xYoCoFwrS1vMBxcRIG+Ztpmj9PiA5O28iX0eGU5+BE+d
	y0LSUT2lKcoR0Q3ZiLsgNd8ImZ4ml4Oa8wwvtKsi33CZKUZXnNmWT
X-Received: by 2002:a05:6a20:12c9:b0:393:625:ef20 with SMTP id adf61e73a8af0-39467116735mr12413759637.4.1771305932442;
        Mon, 16 Feb 2026 21:25:32 -0800 (PST)
X-Received: by 2002:a05:6a20:12c9:b0:393:625:ef20 with SMTP id adf61e73a8af0-39467116735mr12413739637.4.1771305931980;
        Mon, 16 Feb 2026 21:25:31 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-356a87f47f1sm6537685a91.8.2026.02.16.21.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 21:25:31 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v4 0/3] Enable Inline crypto engine for kodiak and monaco
Date: Tue, 17 Feb 2026 10:55:23 +0530
Message-Id: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: y8ZBJRvRiJLQO-C6vNZaKGnqKqX0OUnu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA0MiBTYWx0ZWRfX/McLBbFGujaz
 WdiaZhaOMF67eZitdEbP0KAgc38jmjHOlx+8It3qFUhbMKKdR92G+AV1ipqOw7AJOGktlWHW3nL
 JNx9hyPI3LiM5uKO++w+eDL6QvSmq3P9x+8phmfgVT6dO7MzYS1My2cZ9qbjs8+Jk2g9QS3aS8w
 von8Y5+tgHulW0ttnSaWWALZERRQ5MyvUpLIfcXq/DkF9fQbNBte9kp/cC+NgHsNrAVsjG2Lbie
 giJkxnWNvXmxzic01yu5xiPUTnxpoEFiE1Bj47Rh14z5O7CODzrlf4vM/t7LSVoupeg6tYaimhI
 ZmTzdWW3kSMauSkbCuqX00gCAT9pjdIZ2SGUOIyoLLvO3cVfiXbLR3tqhClg/xyOR68JnZu8J5G
 vB71nIpoQmewBgkntiIKVz3KPo0a6WFQyMy7eEbzDSikp0K6I51XtjRDHj1LyPN1CGk1k8qupHS
 9ofRU4NfNdf/W65aSeg==
X-Authority-Analysis: v=2.4 cv=b7K/I9Gx c=1 sm=1 tr=0 ts=6993fbcd cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=OaewepulewRRD3_FMPAA:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: y8ZBJRvRiJLQO-C6vNZaKGnqKqX0OUnu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_08,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170042
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265963-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B9300148C83
X-Rspamd-Action: no action

Document Inline Crypto Engine (ICE) handle for SDHC and add its device-tree
node to enable it for kodiak and monaco.

How this patch was tested:
- export ARCH=arm64
- export CROSS_COMPILE=aarch64-linux-gnu-
- make menuconfig
- make defconifg
- make DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/sdhci-msm.yaml dt_binding_check
- make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CHECK_DTBS=y dtbs

---
Changes in v4:
- Added a new patch (3/3) for device tree changes for Monaco SoC.
- Updated commit subject of cover letter to reflect "monaco".
- Removed the text description of constraints from "description:" for "qcom,ice" and
  wrapped the code.
- Corrected the schema code to reflect the constraint of "qcom,ice" usage properly.

Changes in v3:
- Described the purpose for phandle in "description:" for "qcom,ice".
- Re-added the "if: required:" description for "qcom,ice" with proper
  encoding.
- Corrected the uppercase for base address and reg address space for ICE DT node.

Changes in v2:
- Removed the "if: required:" description for "qcom,ice" dt-binding
  as the ICE node is optional.
- Corrected the ICE dt node entry according to the dt-binding description.
- Added test details.

Changes in v1:
- Updated the dt-binding for ICE node.
- Added the dt node for ICE for kodiak.


Neeraj Soni (3):
  dt-bindings: mmc: sdhci-msm: Add ICE phandle
  arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
  arm64: dts: qcom: monaco: enable the inline crypto engine for SDHC

 .../devicetree/bindings/mmc/sdhci-msm.yaml        | 15 +++++++++++++++
 arch/arm64/boot/dts/qcom/kodiak.dtsi              |  9 +++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi              |  9 +++++++++
 3 files changed, 33 insertions(+)

--
2.34.1


