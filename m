Return-Path: <devicetree+bounces-320181-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OSnlOFW/R2qGegAAu9opvQ
	(envelope-from <devicetree+bounces-320181-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:55:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B108F7031F7
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:55:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=BjEwQ7KX;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=iawHCJJe;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320181-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-320181-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 050D430913AA
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A193E557F;
	Fri,  3 Jul 2026 13:45:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DE53E4C84
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:45:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783086341; cv=none; b=MBj/4d8rP7MhLFARLpKoq4W8dcWR1zBhV3IdnzF+1a2ewXlC+3ycLS5Ubg7miEDv9riSzIdA1eDdw0iOBS/jFFmym1x86JeWpsJ/XnD2i+Tt6gtORdwr4lv9tNd+J6C61b8ncvEKwclcLmh7DlacpzMrfxhdScXtKa1LVGWdk+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783086341; c=relaxed/simple;
	bh=xh4ucig5hPRkaGw1GggCAwEU1pqdfnGTPbj3vUFpt5A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Pw/mpwMpUQ3vEpYdO87T3LRfsvWCoueqKb3v8TYH4tznRCjBg3ZynEV42zmBJ9YgyXQqVD5CHJPujKpu5BXTLiMfdHIUUC9u1uwmR9/0MtgFEG2RDR3txeeoyZ1TyHx9JVQSlHw2I3yuhJz/lR7FVVqc1tiLly+7K1P4Lv7Kb30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BjEwQ7KX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iawHCJJe; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663BWKhH2994873
	for <devicetree@vger.kernel.org>; Fri, 3 Jul 2026 13:45:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OF0qK3G3GFE0oahQw0gKGPhEucSp1JH1FwJoY8Lp59M=; b=BjEwQ7KXV91y6w5K
	VaQIfEuSxIf16eWd1haiwUtC/PYzRYiVxl1j5dXjqMoCiigcwbu0X+8vL/TExdy4
	ZgaYvX3s/VjRfFmnLJ2HAxVpoT2At/uvdsGENm8WOfnOSljYzXiflbVP57mea2FX
	KnQYVBSaRc+RTVmHc1S5LvgQFioMJfP0+CNEuyaeFSePaW2SyzXcOQyNvMVcGtyj
	FwwWkbyB25zHbrgMA13dzHUKe6tPQz9z0YNucycudgyRDEQ2qG4QyzaE1Utrt5uS
	gNyLrQaSn/7xmzjyveth3rLNCkQC+OEimnMLDr3jt7aY1uQdm/4UCnx8933DfJ1O
	dXR6hw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f648n2mvx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 13:45:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e7ee64b25so103359285a.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 06:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783086338; x=1783691138; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OF0qK3G3GFE0oahQw0gKGPhEucSp1JH1FwJoY8Lp59M=;
        b=iawHCJJeg2BCbpl80by+FrpM24LgUYVTu/dLt/Yodeog6tmbVLcmjYRVGpngaIgvbE
         48sJ46C5TKWE7yMPKmR9goCyaoakbc9KqB9F5I20yhyLfygCJDnU9mAV1YcAasG0PGHD
         wxNVb16EFlvkuldW8e+qW24SZ35922SzVVtGRNfQufmWcxQ+mTU41jBKVVO0gXKX01IG
         URelzTn8RWg6GSYuQbza5czMN6oKX3DkV27B4QXixyokvrhj3+70OZ5EADGOVAkpO2ZN
         YQaO6SsFyqEUiOJkaPyQxpYda1XK4emBLFGt7hvDY3r9yvN+qlMhhaSSZA1XwSYCrMu+
         cA1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783086338; x=1783691138;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OF0qK3G3GFE0oahQw0gKGPhEucSp1JH1FwJoY8Lp59M=;
        b=CceKdqf7WQOJwd42nhDWJ7LAw9miR5HafeRWoBh6Ypw4wW1o07Hscb/VgEI5Wbb7Yl
         eavI5TmdmlZcFgBrsCIUiV91TtVD2ziTxEY/baM4FMMZ0ZjOrqa2BzzAq4r0EyucyfEu
         lsLTzw3TX7RAG5UwOsvo+UmOuWnKH85+vW6tzeegBnqo2M3VoHbzJF6Sjr64MyE8oxTb
         BvYL9R4cCS0ka2GbNWwwh26A6tZzc97oejEEsP9whS63uVO1WJFwDQHYjHkl1b+tqgVG
         zlTxLn3kjAWEVvhkt3Ur2Pj8Z+K5exY7hkqrIECGswNPTQ4ZuuOf35lhHVPr+XPwwrnG
         O1og==
X-Forwarded-Encrypted: i=1; AFNElJ/ATVmPe8jSkgvZDfDTN4bDaQfj9DTre+YRex+BYbnUBT7oWwKQ5G7s48dtuODTTFF28jT4RnKnn/ol@vger.kernel.org
X-Gm-Message-State: AOJu0YyezkHCyFTKqiF5XMmTSkP1XXv+mz6+Vgicdgq1PyO8mnpnGYSg
	dpAQ0qgT1FGgx5i3RjGb94Wmvu2B/3/rl0bq5TYq8qtMNpMJ9lvU4IanwQbrt/mxJ4xC1EKsEW5
	xbETvtfZeWrWLo2IWMZWGMX3UossyPLqqC4oa20VJpR2zDTi9eOIi5LabSo9XLh4A
X-Gm-Gg: AfdE7cn1VHi8jyVpL7oof9qN1GpN4K5Qc3KHQMm1Oj7r8tlhdMe787SQEeW8vhWfpOQ
	tY2YyoYZrqDpPFmKJVo6FO5BV0PGnOgVEW12AJCQsdY0Xz1myX7Tt1tpD16pf3eRXzN3BUPoykJ
	bk7DvdYgSCbhZjlDFpfYC9oSaO89WMx1P8IH3qGlY9qsuKflozd/E/bzCW7LaNr3zQza3Dmf+ww
	nkMgijaYpL8H7CCj//8SUjfQFf2xUGztp//lO3qGkXSQEPEy3aH4uCfpp7Okpj5xbdjF3G31zYZ
	X97dtRLnDTyYMsqc3eABUVqHVUVOI11lmj2SUipCrlCEy9h/ozdC1NAxluHo8cOaqDLynLSLFSP
	hLvgNZETBfdDeitjWAeEq3+QyEs9v+sWKi0nKUPpjtK5hhCWqQ5zYnyPV0MIA4ca/F68uVSu3Lk
	woA4Lgz/iOMlH6btlqfrXsQVi/uO3ze7FdHBDW16yRVqMX7q0Jjwiuy0DvLDUk8JU=
X-Received: by 2002:a05:620a:2725:b0:92e:6a8d:38ba with SMTP id af79cd13be357-92e7b3dec02mr1223915785a.56.1783086332544;
        Fri, 03 Jul 2026 06:45:32 -0700 (PDT)
X-Received: by 2002:a05:620a:2725:b0:92e:6a8d:38ba with SMTP id af79cd13be357-92e7b3dec02mr1223818485a.56.1783086327285;
        Fri, 03 Jul 2026 06:45:27 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:809d:5d56:19d9:ff8b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b6059e4csm286135466b.1.2026.07.03.06.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 06:45:26 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 03 Jul 2026 15:45:16 +0200
Subject: [PATCH v8 3/9] dt-bindings: bluetooth: qcom: Add NVMEM BD address
 cell
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260703-block-as-nvmem-v8-3-98ae32bfc49a@oss.qualcomm.com>
References: <20260703-block-as-nvmem-v8-0-98ae32bfc49a@oss.qualcomm.com>
In-Reply-To: <20260703-block-as-nvmem-v8-0-98ae32bfc49a@oss.qualcomm.com>
To: Ulf Hansson <ulfh@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Jens Axboe <axboe@kernel.dk>,
        Johannes Berg <johannes@sipsolutions.net>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Saravana Kannan <saravanak@kernel.org>,
        Christian Marangi <ansuelsmth@gmail.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-block@vger.kernel.org, linux-wireless@vger.kernel.org,
        ath10k@lists.infradead.org, linux-bluetooth@vger.kernel.org,
        netdev@vger.kernel.org, daniel@makrotopia.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDEzNSBTYWx0ZWRfX5/z2FZrRKXwQ
 YEwSFiMZAR9B2Gmf5TJQ7IWXs3r4+/h47jXHKvgCmV0he2zoZM0n3c7ru1UBQJHibP5RHd8BotD
 PkTzZ0oZ/fdKZcNIH9ns3FXpea2kERU=
X-Proofpoint-ORIG-GUID: _xjJgo_8fBfDtbxsbnqGcgW7taMJnnXB
X-Authority-Analysis: v=2.4 cv=O4wJeh9W c=1 sm=1 tr=0 ts=6a47bd02 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=jFERsaRKWwo8c2z-USAA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: _xjJgo_8fBfDtbxsbnqGcgW7taMJnnXB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDEzNSBTYWx0ZWRfX/qXBckh/IwZA
 cHgQ7cRvjWCebt9W3ZeX6H0ARuqHKIz+cJVc+rz3xMAyTM6+aWbPhjENToY7l5oQxYsDpF46Yfp
 O9BPJdMd3KkgZfR4HjwJNZq55hgvqcL4Vn0pxfbGiRBjlGR8s5edQobI/HAGAp4X8HXM9HTvaip
 WnpdTEuG3rNchbvJa9uQPlMnjttb+TQU+rfOiDcGFnk9sc8rtvenOnjJf+WdSnNj7tTa/7vXzMt
 F1gceYAhFZrvGqBxKDVLLSFtoOouXB76pMCqaTEA21KcoMW9cUBgEZDu/gThN4jVI96g+9rGl2j
 dhlJGi7r2XRgprxIVSrPUHBQIvyPzJdnc5O/LdZyM+MduHKTf1XcnA3XrG6Top2y0RonsLDT4bm
 WAmSVDAsLW/hidckhdrLsyzrzm6CFUSdvY92hf/Q+a4F4icHAd6no+6NqEKfTQ8zBye1ygfNT48
 PBIOjf/fTpeIlZgoRNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030135
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-320181-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,kernel.dk,sipsolutions.net,holtmann.org,gmail.com,quicinc.com,davemloft.net,google.com,redhat.com,lunn.ch,armlinux.org.uk];
	FORGED_RECIPIENTS(0.00)[m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:axboe@kernel.dk,m:johannes@sipsolutions.net,m:jjohnson@kernel.org,m:brgl@kernel.org,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:quic_bgodavar@quicinc.com,m:quic_rjliao@quicinc.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:srini@kernel.org,m:andrew@lunn.ch,m:hkallweit1@gmail.com,m:linux@armlinux.org.uk,m:saravanak@kernel.org,m:ansuelsmth@gmail.com,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-block@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:ath10k@lists.infradead.org,m:linux-bluetooth@vger.kernel.org,m:netdev@vger.kernel.org,m:daniel@makrotopia.org,m:loic.poulain@oss.qualcomm.com,m:bartosz.golaszewski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:list
 s@lfdr.de];
	FORGED_SENDER(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B108F7031F7

Add support for an NVMEM cell provider for "local-bd-address",
allowing the Bluetooth stack to retrieve controller's BD address
from non-volatile storage such as an EEPROM or an eMMC partition.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 .../devicetree/bindings/net/bluetooth/qcom,bluetooth-common.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,bluetooth-common.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,bluetooth-common.yaml
index c8e9c55c1afb4c8e05ba2dae41ce2db4194b4a0f..7cb28f30c9af032082f23311f2fc89a32f266f17 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qcom,bluetooth-common.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,bluetooth-common.yaml
@@ -22,4 +22,13 @@ properties:
     description:
       boot firmware is incorrectly passing the address in big-endian order
 
+  nvmem-cells:
+    maxItems: 1
+    description:
+      Nvmem data cell that contains a 6 byte BD address with the most
+      significant byte first (big-endian).
+
+  nvmem-cell-names:
+    const: local-bd-address
+
 additionalProperties: true

-- 
2.34.1


