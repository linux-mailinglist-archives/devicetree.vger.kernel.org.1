Return-Path: <devicetree+bounces-263324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMXwMqnPhWlBGwQAu9opvQ
	(envelope-from <devicetree+bounces-263324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:25:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D471FD35E
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:25:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D4FF3049EF0
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 11:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9C033B945;
	Fri,  6 Feb 2026 11:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jox9uX6q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DHhgh/2f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2879F2BF002
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 11:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770376860; cv=none; b=UD9HvOZD2vDpK+YlI67BdsRGSHEEq1/c72v1+emq/mEAD0dcD7k7Ul4CYAIq9NNUnFXZvIIstS8wTkszNr1rmvWdIaBY24quGC6H5mcRdv9AIcjnNN+FeCjfMxrhK8+EO2V3KnEY4bJVd6rdz6OAPujvWqXjUBKkegmkdqB3BL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770376860; c=relaxed/simple;
	bh=8MniwXhoSDBLjxGfPy2piP8bb0OObxLz3gJR92HVQNA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IeUFF4E4kIoA1UAAxPmUAdMvyNcZyfCFvDXItlb19Wo9bRx2VLmb8ZM+n8XeWWrfVzOyHdq13XhE7UQ2V55VxKkRJF1ENxlrXY2lwxRzuV7sEY2d2Cdz+4PCvt/JkaUyBAZq6LlYaDU4Vc4nRlJz+VCOF3WIymNm4VpPWxCrxw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jox9uX6q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DHhgh/2f; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167Xib71852748
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 11:20:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=7ipg6vDGL0Bln0nZwoVmG/CTwGSHgWXyQ7z
	nW8kSlcU=; b=jox9uX6qxMkFo6JxrOWfEFG1yUWlR3AW2QNeYhFqqyuHUUpQutk
	I27PiZZE3VmHG9KfJjkg8ea1he49ix0qo5ntR7jBD2tb8Lw8ObWL0cSTfA0viCNX
	12/ubSISLvlke/lIx4PlMlKGydr6Pj3j1a94t03u1jQ6vi8rJXWMVvSigmXWLJuF
	yRu63e1UISgL2DfN4hBM4HArBF1D4dUL+imLT58bUFizJxjjVRCKA/YASFRsH3x7
	1cZeGee6dfyM3T8Je+MM2/iSKrJW3I+NwJwuUQ+uOjifLm8pzQYTOpx9oGW40zFc
	e2Zc4LB59OkDM/eDWu/wzFZpmHZqnxclNyA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c148q0x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 11:20:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso20198015ad.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 03:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770376859; x=1770981659; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7ipg6vDGL0Bln0nZwoVmG/CTwGSHgWXyQ7znW8kSlcU=;
        b=DHhgh/2fzzVzUXh7B2n/SJrGY5YeFyKUiCDpVZMsKKqiUXUK3WnxjNP4hTFFMOagW8
         XZOVx7383mNM2ALMvetpry4np2q1k5R9+lDGUgzoMq/y9/Q9Y4gjqZdxOE3QyUkLm+Wz
         UVW4/PZAAsRIlxDc8MhWnTnU7VEZDF+Fv0eTBD2ktsk8sJJVZP//Y5iw49PH+F2UMLkG
         8hzhCoQO5vWXm3O0uk1z3RUjVsWbOo76LuOaBG+hAuiSDKYpqS/WS1kIUtToyEJR3rWE
         kwZjyCPiViBW38VUPHJ3FaYXlRBbtZZdddqdfVjCmWL+XZA9jnZQ+bJSFvU/1+Yo8XlB
         G5fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770376859; x=1770981659;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ipg6vDGL0Bln0nZwoVmG/CTwGSHgWXyQ7znW8kSlcU=;
        b=Mu0VJxvZ3zmKI1Gtl8gj4Xt5or+wrDboo6eCIHTzNsVVFoOP2WJnaf+ceXhNpI7kye
         plfn9wYWYnjViLz/FlR645H73EpZ828G2zuqUMzHoIuRpcDxSS5AkO/xT9xbV8KEAzf8
         FCTgjLyNq+BTp20YFmA+PfP2bh9nUzHI16EUOfEqMq/CWIZEoQ5XUI7dveVoc0UUSuKT
         zwpGSeglEWXl27K+48m8QbBtLdPmFRBz5QD+uW3NGYx2ULawMGTGqxS1MdH9S1fQM+ab
         WXCi2vfr/t9dO9KTCTNnxZoV7nZj8DwzcFUsw9poj4KmcVe8CBjEVZkYQu0LzrLmus0N
         uRcw==
X-Forwarded-Encrypted: i=1; AJvYcCWLrrQFRRS95xgpCnjovwVdl6HpaJFPsgAK9Rt1BMWNy2GBvpTvX9WZ6FGDXFu3/ZHfzwyNmfcY0Bfe@vger.kernel.org
X-Gm-Message-State: AOJu0YwM40vB1J50wr6nOeg5weKsYJbBnuvbEJKQS3msZcwiTj3Frmes
	15fLTs5GpimHefoGtfwPgRB8VsjDDGxTb5zcO7eT3yWmXPxNB+e3NtKbHgvKqE0q+oJKbR6a5Hn
	ZchpuIU3A2C0r98I8N0nqtL/6ZCiXxL3X6XQi0mBU0oQ8ZUXsGKyPJ85L0r7MAon1
X-Gm-Gg: AZuq6aLCb3aaaMWLp3O+t1mgtOe5/cNEBw0wMwE46QgZwaXJcCsFb6loWOrpUimCgpF
	DsTE+XiYPPCdJBrjvA6EKREuk26EyA2v5ud3EnayaKu+hCmha5+gKppkN4wxVU3D6efqYr7+rmB
	0rEFD1FLow4uQ5kP/gVEakIp7PorvKFiAbBRdHxVnIIXgV7UESrO7rbXQ00xI+yCdbDK6uMUB7i
	W2ThGoIebJfEOmZmbW+UEyeYmofZ7XzdvLlNhcNwLL7dfC6zMeM6yPKlx4mkN+Jasa2ZEOwAYao
	J0/0DVjzJsRp9UFb1Q9eVvE9+rjJmMGEus0ZNeyWjvXNt+PQOZui0Uois2lLF1WTtNYDo/dwBq0
	JYvDjGVi+e34+BCfDcCo6OnnMgfwtWA4lUE/2SYIC
X-Received: by 2002:a17:903:22d1:b0:2a9:47d0:12c6 with SMTP id d9443c01a7336-2a952026a43mr26042715ad.16.1770376858690;
        Fri, 06 Feb 2026 03:20:58 -0800 (PST)
X-Received: by 2002:a17:903:22d1:b0:2a9:47d0:12c6 with SMTP id d9443c01a7336-2a952026a43mr26042325ad.16.1770376858185;
        Fri, 06 Feb 2026 03:20:58 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c50211sm21675905ad.5.2026.02.06.03.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 03:20:57 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v3 0/2] Enable Inline crypto engine for kodiak
Date: Fri,  6 Feb 2026 16:50:51 +0530
Message-Id: <20260206112053.3287756-1-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=P5k3RyAu c=1 sm=1 tr=0 ts=6985ce9b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=OaewepulewRRD3_FMPAA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3OSBTYWx0ZWRfX/EAyn8bH2H+r
 dqL9ytPlIZCjZue+6YDN7t8ZUF5Zo0qb/+94plgrMO+bsLfuq78M0G29sZnUSMwGS3CpGdSiibi
 HkNSDaZNajdavJvqLdBEej8g6Wc3WgHZHN6htH/CzuU1l8f/kwkCuMw58yIZgfPFqp1U5rNEjG7
 YZpyYwocWzeCAnniCyiOYUatGhKhHXDmARGUs15WTKoh6ljTIKhuIj7cs6VszXQgm8DnuveXNom
 ee3j9JJ+Tomyg56HzCoyQ7Wp1DESTBKSnxpq9IiDm6FAKl+4jpwqmm6YT7hJ/KfPHhCOtVUeMoE
 rStDfxOMOUVdk12rN/ai/vs87TPo8qStAv8oKIDd1iO48WbAADYSynXdTfQd8QhFYU4TVsvMA80
 wc4YijHZH6KfE4kXYi22sqkIDqX2QWUHOsci12RYl4+Sjwwzd8Xp0mQBV4IPOlilz9Td4k5v2N7
 8HCiKI66qoeSrc6XAXA==
X-Proofpoint-ORIG-GUID: fp0kGn6jIPhVdyIwytRCkBvHsaRsxLmp
X-Proofpoint-GUID: fp0kGn6jIPhVdyIwytRCkBvHsaRsxLmp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263324-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2D471FD35E
X-Rspamd-Action: no action

Document Inline Crypto Engine (ICE) handle for SDHC and add its device-tree
node to enable it for kodiak.

How this patch was tested:
- export ARCH=arm64
- export CROSS_COMPILE=aarch64-linux-gnu-
- make menuconfig
- make defconifg
- make DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/sdhci-msm.yaml dt_binding_check
- make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CHECK_DTBS=y dtbs

---
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

Neeraj Soni (2):
  dt-bindings: mmc: sdhci-msm: Add ICE phandle
  arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC

 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 26 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/kodiak.dtsi          |  9 +++++++
 2 files changed, 35 insertions(+)

--
2.34.1


