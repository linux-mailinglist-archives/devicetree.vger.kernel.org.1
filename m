Return-Path: <devicetree+bounces-317968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rfS6OOr2Q2rlmAoAu9opvQ
	(envelope-from <devicetree+bounces-317968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:03:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 465F96E6BA1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:03:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=kjCIgoiO;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=Hg2MuiO3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317968-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317968-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BD81302BEB4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE30926FA7A;
	Tue, 30 Jun 2026 16:57:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CAD3CA4B5
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 16:57:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782838634; cv=none; b=pQskbX243NjA0rJFmskBeFKdCoDdbOwdULvCu8vxjV45een5MUTR9l23Eodzpm2A6umRt6HNe+xrMO1Us55s6WCIff64kqAXI2doXsH0gZlnWIaoDx4MVRGrdb2JM06451K+cPM0JCvXp4PE6uw5a024cs/xpXltrSV2w8KZJNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782838634; c=relaxed/simple;
	bh=6BttG+pYAFRWMP0PrYr5zLGMt3juyzzxnfIq0WOBgHk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IG5tsUQwWmlweG2a3N66NojeUiY+vRu5xmLj7fV75Vz4UNSZ/0FlbxAScwOfCOkMr8nSlW+gLP7/KIOQ3sBWaS0XT51LTBdWYkTXMzbN2gMfFzzzu0LapWc9DCge7WePjJZsg+0Ang83LBycAQxo6V6Qu1YNF56GrkaUX7xboeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kjCIgoiO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hg2MuiO3; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UEDOj12225407
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 16:57:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=021fetJp+lEcp5FtkRBTh8oWI63wPki+tS4
	subRFo7Y=; b=kjCIgoiOWu6WVKH//7HmzRxG1mihS93SES6s0aGP9NrPJuQS1Hy
	/lKI5pN30EOvAzQNGC0HiATy8PxyXYqoZdnSjnPRgcHF2j0ZNgvelHKF3s/Bqbo2
	hjNQH86eaC+Vetd/5oeHgYhw0w3Tnq8uQTbXrGQy0f0LEsOwr/z+Oa/uMN5eTp26
	piilkGHcwsCabEhsWuximaga2i1UYSWuhsaTL2rYAcUqqRvfdoSvr8MAYNoeC2cO
	SX3S58uvY44Ss34HTf+vRL+Cfd7OVCpntDxyGrWnlExqF3s0S3awCsiupYSdHIp9
	0bbRBq98Sm2NhYbq4Rau8RW3WMKtzPxJJng==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f441gutmv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 16:57:12 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30b877ee493so1379096eec.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782838632; x=1783443432; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=021fetJp+lEcp5FtkRBTh8oWI63wPki+tS4subRFo7Y=;
        b=Hg2MuiO3NcntObXfIlT+Iz6V9QFXMFT0k47I2R745VaQX+ml99NIdhfvbxAr798IJM
         yP7dMtu1L0T1h9c62MHKA7aaJiXiq3B1S1pLxD+520kgt6i+YpCGhqRydu/IAg8oqTtF
         N52rETrDaiJhsfGN9JJJEvlG8IKgOqbiqZgbXMBnsC4ila8PJoqXx0HIP4Vn5NnJC+uE
         T4HPJzexKKSsG4qYWA/7xOPZ0soS2YhNKMkM7857x6f6wuip4fM29elzHv0uMwVunkcU
         edVEA61F7X1PDt9OY13px71OJIL9rVnKXwOzbQZcw3/uMbFUsL/rpEtJc8BsoltpBKmW
         6DqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782838632; x=1783443432;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=021fetJp+lEcp5FtkRBTh8oWI63wPki+tS4subRFo7Y=;
        b=nM0Ga4Uo7KG9zUzVFYF9TlL9ZWVLi+iusJ901ZVpJEETCNrmEl5BJpsQwYjcBDYJLo
         EWeLPNYEFGoCv+zm1+ZIhoiuXbcSmA4pxeP5aBst1IdMmfKHeMmlm4vyq5x6+s1beArJ
         IKf6Wo9i4UeQAm0xaBiuqI5otNmBmijxJlvtJdJoGqRnbxMPda0BUCrhdS0vjzTV2tMZ
         NTROqLjDAsyI1yfIb+PYOdMv7k8bn3Uz7/ClvJcqaNMPwcFiXKbIfyyMP1UVWTlnWjo8
         gCEM47dsg40/KDk57i1kM9P1sBUyVVqF9NlNzhXOg9YAAmg28TPhq0OSY/TE2PtoA9MT
         5mxQ==
X-Forwarded-Encrypted: i=1; AFNElJ+pQFxWsCAzYHnkPfTmQ4On26UENLjccQQV1EATZVu3Xty2ZKg5vxboMgjzopq4QWA1uQ54JdvvLaY0@vger.kernel.org
X-Gm-Message-State: AOJu0YwzcsTZ1hByLRLmju88x3Etm5OX84P8FoAar8bo/nyGDPbc11CG
	4iZe68Trs9npfXsSx5C+fyBeOkMkak1AD+hI7+Bz/wLo4VaYAM8QG5bEXt5T91SUCbzwCJ9NSF9
	BtJhXnjQbEMQfseeEL/YClnUl5eKTyS+GvmCwTL4kTybWSedQTXynkzo2Xq1QTdTc
X-Gm-Gg: AfdE7clsD8EgeiDfCiuAg6M+QTbmLnJCSBW+cnXuHAPir4ZVRvjKmBF2FJREOHUCCRW
	CmLt/quQLQmSfX5ka60TZmQObW/ont+Fyqr/Ed60VQ4Okc8Ng9P0abaukEM8lh3sH+X2rxbb9Bm
	qtu4UwlZE2FdSl6YSQtPzKMLYOXI2s0oaG+ZY4Rr8E7bghkVb5zDo4lx+vZNqMXqPZ585QxPdfG
	eZV5Cn5ZuUkVxiNs2r41UiLCUDZSkj5rOyDmDk9jH+MhCcTbVTurOXgGuD5tqpMGaa1pj1VZIhS
	yX9lgGd8sJoTADuKWlqpbWcdQGsFLVv+P0azCLDPfCPiqYy/6qoC425jSOC4sHAOt6nh0iA1s4F
	SUU91l5MHbaTlWvj/LynxacYm3OelU6i0JE0YRikVP4Bo+g==
X-Received: by 2002:a05:7022:6ba5:b0:139:ed5d:1b53 with SMTP id a92af1059eb24-13b2e32c0a9mr1683457c88.20.1782838631992;
        Tue, 30 Jun 2026 09:57:11 -0700 (PDT)
X-Received: by 2002:a05:7022:6ba5:b0:139:ed5d:1b53 with SMTP id a92af1059eb24-13b2e32c0a9mr1683429c88.20.1782838631472;
        Tue, 30 Jun 2026 09:57:11 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b2a9b425asm12690272c88.0.2026.06.30.09.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 09:57:10 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V2 0/2] arm64: dts: qcom: Shikra SD Card support
Date: Tue, 30 Jun 2026 22:26:58 +0530
Message-Id: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE2MSBTYWx0ZWRfX/vuQbGH0fWpR
 mzP/1GOVkGvEejBqcF7p1LXodvHrpRPbaPPhI1AsH4Z0AL69bwe0iziAbI9igyLeyfEaqaoTCKr
 B1pZ/tOu7/gnrXRcYhIbvTMKwRARTKM=
X-Proofpoint-ORIG-GUID: sDcb3nAt2ZGn4-Hp9bj59-eCQUsP4aLE
X-Authority-Analysis: v=2.4 cv=F8dnsKhN c=1 sm=1 tr=0 ts=6a43f568 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=1w3StAHzAm3vCDDRDnYA:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE2MSBTYWx0ZWRfX1VmlG/dErqli
 vzwQpJ64Cd4YndY0Tj2VSx3a2zlvR3l6EdLCeA+cwTqRsDrXldQRz3Ocq0WxB6M723D2VhViMfL
 dGIRJLK1/iRT9OxUbHv3jdYTCc/7u4lepUqUCsjQCztDlCbfok+S8p/fLAnzso1seOqx++DEywE
 V1GdgskfeEffXPkmcCwGMupShhXtI1yYS1ay13u3l0ofA+jLUM/4D+MlTzO4g0j0/7R0++lopm/
 zpwummCAkLpJpiy8kGoJLO84YRSSou0mqAIB8cKAMZI4eLvTY6g3ohSs4JgSZa4QTPYxFAIhP9X
 H54YYI1T0Y6dvr+oueg+iN6bDyJnSjMaWx5ItWYdVMfUQSreafghPleyWM19/9UJrT+r5DHt1sE
 O3sdEgISSRTlyN98MMQuA0ZnWAMiGS9nnaFnxS/ICeVwCsEJWgiNBDM8rqisUNo96SXPwSU6KLN
 D5HXQAKsqY/Vj1k2goQ==
X-Proofpoint-GUID: sDcb3nAt2ZGn4-Hp9bj59-eCQUsP4aLE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 impostorscore=0 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300161
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-317968-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:quic_wcheng@quicinc.com,m:ulfh@kernel.org,m:kernel@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-phy@lists.infradead.org,m:linux-mmc@vger.kernel.org,m:nitin.rawat@oss.qualcomm.com,m:pradeep.pragallapati@oss.qualcomm.com,m:komal.bajaj@oss.qualcomm.com,m:monish.chunara@oss.qualcomm.com,m:konrad.dybcio@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 465F96E6BA1

This is v2 of the Shikra SD Card support series.

This series adds SD card support for the Shikra platform.

The first patch adds the SDHC2 controller node and the necessary pinctrl
configurations to the base Shikra SoC dtsi. The second patch enables 
this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
the regulator supplies and the card detection GPIO.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Changes in v2:
- Rectify the alignment for clocks and interconnect properties for SD
  card
- Link to v1: https://lore.kernel.org/all/20260604122045.494712-1-monish.chunara@oss.qualcomm.com

Testing:
- Validated on Shikra EVK variants.  

This series depends on:
- https://lore.kernel.org/all/20260612-shikra-dt-v6-2-6b6cb58db477@oss.qualcomm.com

Monish Chunara (2):
  arm64: dts: qcom: Add SD Card support for Shikra SoC
  arm64: dts: qcom: Enable SD card for Shikra EVK

 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra.dtsi        | 97 +++++++++++++++++++++
 4 files changed, 151 insertions(+)

-- 
2.34.1


