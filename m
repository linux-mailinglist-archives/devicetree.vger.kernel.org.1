Return-Path: <devicetree+bounces-258478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WG6IKR5FcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:41:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7CD69114
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 565833045ABC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F24A36B052;
	Thu, 22 Jan 2026 15:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fEQlgQLF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ocu2sFD/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639873659E0
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769095468; cv=none; b=QRqEaiV/g9X1ZUSkN1W/BWq+mXpNhyn9caT5vRMsL+mjpLmmaSuBMB6+FUHVpwGR8gt+32pXJphE5Xom27q8pGfe7wheTNyR3nybRf/mpr8VBFLgHo2dr+GBAZi+nDQSoyd5Sn9Evz1YYfO4dDHJGiP+f7Va5PRvNPCs5TQz3YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769095468; c=relaxed/simple;
	bh=3zEQ9m2W3rLO5HYuql/PzsGDa8f85lYMm0p2GO/cc8E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ixStukU6zFN3gqyyzzTFEdSwg/Su9CE25kqI+yWXny1goRLUlfiDOnvYyH5JPjA2xbWol2iEztRXE7GkwR1zg1p5kICiML7atd6QxOFQGk1JuK3VW1BROdie+2JQaVuutqLQ89sWNqLQS8Ks+oaYMl6a8emRO048lpE6RSfRZcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fEQlgQLF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ocu2sFD/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MF7VwL108523
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:24:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ipXcPVqW2KR4kHqZ7Q8Ex4yhjIP+Tz9Bt8QAaxGEjiU=; b=fEQlgQLFgQ9S2dmw
	5H+4DDB7l1RfbhUF8pTMTiVFk4CuqsLnu4jsAT3Y91kvpACBX7/9W+0M2TKNg4ue
	K/2A+1IDosnzZnFTGZZxkKA+nfhw1uAUA9bPMHG2aVecz0ZGqvF+1fRqJAq8ZelD
	IrdWLgnQ/BjCWUXRfZlO637m+H0XVhGR2Mxx1pF3WNhJKQPf64u/+VUx4VqxV6LY
	rfKMTNBs/IZxdR4AwwLPJt/V9UC/1hSvXn0N2kMOQyZR6Gdnssxg1APe61r6kKcC
	77p8h8vWCzj4r3rYqBrAkuDO1/ZQhP/328HJZ79cSUby3W93tJsjwULPds0UQLRQ
	qC7sMA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu6pgtxmb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:24:25 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81ea3358dd3so979505b3a.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769095464; x=1769700264; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ipXcPVqW2KR4kHqZ7Q8Ex4yhjIP+Tz9Bt8QAaxGEjiU=;
        b=Ocu2sFD/mvUAIfO/EKYaSHTmQ/zsaGrHok9ZfmqrLffnpvL7+kkxfD9v2P8AKSaBIx
         /VdIRw+Afu3nAMOFksgb1alm34Qer5yoK2LNAvf2sycszmnVLGQHXE76Xs0Gx00nsP42
         fcny1J9b61Vd4ssJvAhW4ZvsOemtaCAIWhmnG12Kmud26heb1YaDdysY08PnLXJySEhB
         gKKXUXXfkKrQbPm9slS2DqRrNNMJ/BTaToo2GMxf1EIO+e7NclEVJISmHr9IpqJC67Re
         GNApdE/93rdlLV5p3UcK6o9ZhVJJJhWpeu1jRMRqP/c9YtpbvMuEWUCqf4vWUWmSuQ3r
         V/vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769095464; x=1769700264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ipXcPVqW2KR4kHqZ7Q8Ex4yhjIP+Tz9Bt8QAaxGEjiU=;
        b=qHEsRAmHgEaDBx9HVUQP2tzcxWki8U5h4UoqEhxjL94APLjtZR188vaRD3u6xA2vbf
         LAXZobv/creOBeUo5yHkATl6w9fl/uIFPx8rryBCpD5XcXXM5HIeaJpiNQE09QJJtKja
         h6/j3Q0MhDXawUS2bdjoywjS0DBkjmRaARwyGQdhtGUqyoHO6kbczrTo6MjKaAXTjpCS
         Hs4Uh6yxWcDE04WPrYw0RQyhZR4cDW0U0KkWe+ePQkRznlNNholU3haHeobuIRIPBLsM
         qU01r8em++W09KWydyEzZQP1GvbDyaLnkteOUadoTQ01L9HdfIgN1EgP13SdWpkh7QfJ
         7+Bg==
X-Forwarded-Encrypted: i=1; AJvYcCVNCAqLoOFb7ggopNvZUtFbfIrT4MDMr6YKOgzaLMdNGpi51F0Ll6IupOM87Sx2RPgN6X6tLZiEBgM6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3Tv4V0apSzORYjJJ+JFaTwS7CsRjlxNrnZdxjT5CLDrdKnON6
	J2TaCtVVK9k3bl081pPtjCjrrOJSB3GA+AZ7YQb2lPHL1cSl7t3x5f2pWUUqihz21MQ0TQfhh4F
	aBBL6NONaVqc+tuxTxdiA7P2qR9kP6Gs/7QVWuv9zaBA7EGbu05ddIf/w3T+xAHZP
X-Gm-Gg: AZuq6aLSCO4q1fiTj0kRTwDmg/Ud60E6oPYuDeMDpJXovq67wZXwnTOt/a/APjnbMV8
	+pI9qezRkRt+xv+zeoIeQt+QR5HSRtf6NB7795DEpHIhpGZ2r9b9nrjo1UAlHPXMOPI4gNNYF1r
	yxIcFVS/s+11J2wbYq2eU9rNeVA7KlujEGLes6bjsyzMANofzwaJRAX2GOcHXPmezTtnqqiXtYj
	Q7WI0blGtje8ycNPLaQReoMGjm8m98rPZgyURDXdDySvG3oYF9MoHd56Yo7qly9ic0vtlM4oqh4
	ArHKpMaIL0ilKS2fZngSrAZ42iim/EaeLbU4Ubt52QEIHTT/q/obVUvax7LAsOVOStchEwmlkn6
	pLjWS3FX7c762CDjCSpjVQK2C5ik9fUSUKvm5to+P5i7KM9yu8yCbGs8N4MLpGFIjYrVEJSstKS
	4y+L4zCtf3wNDEZQp9WWAToD3Wn0CVSA==
X-Received: by 2002:a05:6a00:1797:b0:81f:9b0a:812a with SMTP id d2e1a72fcca58-81fa1780e68mr19308200b3a.14.1769095464197;
        Thu, 22 Jan 2026 07:24:24 -0800 (PST)
X-Received: by 2002:a05:6a00:1797:b0:81f:9b0a:812a with SMTP id d2e1a72fcca58-81fa1780e68mr19308174b3a.14.1769095463712;
        Thu, 22 Jan 2026 07:24:23 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82180636c38sm3743474b3a.24.2026.01.22.07.24.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:24:23 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 20:53:59 +0530
Subject: [PATCH v6 2/4] arm64: defconfig: Enable Glymur configs for boot to
 shell
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-upstream_v3_glymur_introduction-v6-2-245f408ed82a@oss.qualcomm.com>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
In-Reply-To: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769095452; l=1615;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=3zEQ9m2W3rLO5HYuql/PzsGDa8f85lYMm0p2GO/cc8E=;
 b=FFH1lLqjTw12LWV+jBHe4j8nZDGOXL33sRtV/q9aPBDJkwALz73XA57SXP0hCvWvvrk2mCTpr
 nYUhYa1eUDfA8teCnqOnD2+JxLTRT3RhPtKPxP8mNviQedOCvvrHhIu
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDExNyBTYWx0ZWRfX5qda+l5LZSbh
 H4x8vXRlp+gdrRSivIjiNkEYhoCTAsodCjVV9kKGdeaKVumcgw9zw8h172HvEaZvrWVu9TFf70j
 rGvfupvI4IZVdOKl5RLQUekFJJPNb07ZV67cs15I6yXT2UbUTmncOQjWl/9YouupI+Y5jyKkR0N
 m3suW0lz6qIDUB3hcL1Ie+f25envX4CtxcLchaqOhmn2LVc3RoI0WTo1UAYXtWeYC5JCcposO2w
 9G2J6UDxu84qceMdK0msQ1gZdjCd786Wx8HklxMWZOs2Qijg2J+D/5GKhcuuaF8aJ1Vp2eYMyeQ
 jABAQRLk+dk76u/K21bYa5ASmL1G0ptba2at2mKp2IYdDGYhBryh/dW768Vs1MkO7vOIF0C8/d4
 mi3GhZQH5AMI5oZxa53WxPNWEpWlrvgWkG0FGA5dJ+jKSdyYSkwYJngVWp72Yurt0qgt06ZlzZ7
 zFa6Dlx3tbpVFDLvivA==
X-Authority-Analysis: v=2.4 cv=OZGVzxTY c=1 sm=1 tr=0 ts=69724129 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=G4s3PgB1coGp2Q1p4bUA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: phM9gXhxWpLjseidqMWLUHRJRF69zSoJ
X-Proofpoint-GUID: phM9gXhxWpLjseidqMWLUHRJRF69zSoJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0
 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-258478-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2D7CD69114
X-Rspamd-Action: no action

The serial engine must be properly setup before kernel reaches
"init", so UART driver and its dependencies needs to be built in.
Enable its dependency clocks,interconnect and pinctrl as built-in
to boot Qualcomm's dev platform - Glymur CRD board to UART console with
rootfs on nvme storage.
DISPCC enabled as module, used for display.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c43dcadabec4..807881932132 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -645,6 +645,7 @@ CONFIG_PINCTRL_IMX91=y
 CONFIG_PINCTRL_IMX93=y
 CONFIG_PINCTRL_IMX_SCMI=y
 CONFIG_PINCTRL_MSM=y
+CONFIG_PINCTRL_GLYMUR=y
 CONFIG_PINCTRL_IPQ5018=y
 CONFIG_PINCTRL_IPQ5332=y
 CONFIG_PINCTRL_IPQ5424=y
@@ -1452,6 +1453,9 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_GLYMUR_DISPCC=m
+CONFIG_CLK_GLYMUR_GCC=y
+CONFIG_CLK_GLYMUR_TCSRCC=m
 CONFIG_CLK_KAANAPALI_GCC=y
 CONFIG_CLK_KAANAPALI_TCSRCC=m
 CONFIG_CLK_X1E80100_CAMCC=m
@@ -1844,6 +1848,7 @@ CONFIG_INTERCONNECT_IMX8MN=m
 CONFIG_INTERCONNECT_IMX8MQ=m
 CONFIG_INTERCONNECT_IMX8MP=y
 CONFIG_INTERCONNECT_QCOM=y
+CONFIG_INTERCONNECT_QCOM_GLYMUR=y
 CONFIG_INTERCONNECT_QCOM_KAANAPALI=y
 CONFIG_INTERCONNECT_QCOM_MSM8916=m
 CONFIG_INTERCONNECT_QCOM_MSM8953=y

-- 
2.34.1


