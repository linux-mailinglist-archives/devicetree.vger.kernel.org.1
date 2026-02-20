Return-Path: <devicetree+bounces-266863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBqnMoMjmGlNBgMAu9opvQ
	(envelope-from <devicetree+bounces-266863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:04:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 228D0165FF9
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4739304C12D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBFB331A7EA;
	Fri, 20 Feb 2026 09:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jSJz8RTG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bsZCfrVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F762F3636
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771578185; cv=none; b=P54yo0if2RXkIPS9PXYUnaWECrBlcttXUj0GgX3ZIWPXBi2PTCTLG9ShDi6x/MUKUVKu4vGeesdO+ruSaoo1CSFV1b5P36y82BsqWyoN/tkz3BnIl57RNcmDhemeFsArMXMgnVSgXDwOk3z+vEt39MMccvO1V7H4F+M6n8G9N54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771578185; c=relaxed/simple;
	bh=ogQJTuWLMLN4UCCaH2Bg2sfc2PYfkJtCqCGSgU+0WBU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=I8NFzY0P35A38VCFo+5xycoM3JT0kyVtkw9uPS6vp/nlxANpT/jkmrNUFrP9wXTd+1cd2MNO7qCNYEJKKtB2aZdMniTH0ABSXTvqK3tTeYl7pKGRht1OIL9EBdje57WuS7Ws9Au90jZMhHmvwi0phLZx6cAcctH4bM5nmp1vtiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jSJz8RTG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bsZCfrVP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5SRu33864274
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:03:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=3FpfdkKZz0MStDBt4p1T0FykBqK+a8wNyzH
	le+DrDVo=; b=jSJz8RTGEFdOLSHFSjVgW53i/fPJSgpq8U3+YgPelBAYHnXsU6Y
	PrdqQSGIgpFXFooAz0Yo0GSKoo0wu4Pm8itEJ+rjKi6veR0B24G6/PeIVv+QTE2R
	7zV2EESYSTZpbZ5uy1VPnXaQW51jzglj6aJVjkEc8zq+bXY/cDwzP81qzOJKw53k
	VCqxzIrFcKXq/9VE9UHVU6sdp+gs0Q1x2kBlzoXHTL1thgHgdz2mjzvMbRusTPUs
	gXlUyDGD+RzG9KfmrjYozHmwm1+N3t3XoYMCmLdPXMnqAOVxaWJHDwSfTrYFii9J
	B6+96ww7kOdQIHDO1hdmcFFVe4WBkOougHw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce2ghu82m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:03:04 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aad3380076so16928025ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771578183; x=1772182983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3FpfdkKZz0MStDBt4p1T0FykBqK+a8wNyzHle+DrDVo=;
        b=bsZCfrVPpYRZcF/ho+bCAkGZaP23JocAukyCuBULhCYDeQa23gScjBAnzbRy7g5xlV
         UH2I7vMch1AXbHNYwHY2k3R+JN+/z19uZi7odWmmMqpTT7vL9bc357kHjUbx+T1/2DYu
         BjaJn8H4+EeZ9FwniCo3DhFXj3wfxLo4zx/KNJpw+D8ZdsZYl7KNfE+0z2MXeWySBTx6
         +TcA97/ZsjDvYbqOxtq7Ie4+V3mzz/rh1THPEEjvcUHbjTQ/TjwKoq4kCpjZijjY1kTM
         Felk137VbL1Q10B9u7oiT1XzM53F7faQwI8xrXO0BrxSES6kaQe13ngLtjF7XMNKD/Hs
         /g3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771578183; x=1772182983;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3FpfdkKZz0MStDBt4p1T0FykBqK+a8wNyzHle+DrDVo=;
        b=lF3z86dCr6ryYPsqwcWMyn1t7u7mVtW5aYbtXC66VMwcPVL/znWd8a8+ycPMQy6vBj
         QWHgerEuAIQC1sS9njFelZr/4Dt6f+SVeJoh/CppJIcowJ+KeEpiXHfzYTiQIwlegqfr
         niDfe5SHRDRkluQdw9oXNOuMTsxW5Irp0nw18Kv+nc6g1s3TVzJAuqXsk6aNurkJ5US2
         z9egc47OKImgEFg1YT42ZHgiNeJNgpa8K4UkIN7mkYtlUqqvo1Obla9ZDCDX1oXQqjW4
         ct6M+5SdcRaP4YVPgPs8b5KsK3PGScm9S30EbEzBhtlJDVYj6a74eWzZybTW2Q/iagSY
         DCDg==
X-Forwarded-Encrypted: i=1; AJvYcCVE4CNFe5C2rF4nngItk1zskJVOSFsGABslg6LFRNgUSAJKkH2PRAWH6WD1Mk9NDmAcpq0GTkVHDvOb@vger.kernel.org
X-Gm-Message-State: AOJu0YyW2aHucEhVpvnHqo/J9rcKik/cGLj4NVmZD0eShHlQdDXY0U8r
	bSRuzfp2zr4nnwdHuZi6rwM2UQVyD7Fd+8x2zz2+0QBUivSTbpdXzC39cL4cUwbQIVCG/t7mpIf
	5fwyrJZGlnKCnMmDUx2FKcYlprv/N+hDanqcpaiqEcJd/YcvPnO+YJ2JGvx2L9mqY
X-Gm-Gg: AZuq6aK/dXukl8w3d6AujS6GEvyrlvwRBAr0E7FESsKOrf0pBh5T7GqIWhyfG8kT/Sv
	jYQQkLkaBVDNfFkhl5xEECiJIAoWGVpSgEFMSRFfMUg5+GN5brgnrNgUetglkjYNrxYdCRKPBRn
	WpL6RCxCj++/YgNKdCgicfL7ZPnwDAwPhHFhxPNrz885UYseIjzNbH8k8HiqcYSJJyZ/pSKKSxy
	dQKy2ni5Lh8RKcAmUMMOX0IOdLFyMOC14Ig9ooBjLhI7pWNq4Y+Mf+9PNeZj95tosQlBbFxYsZQ
	zZcD8SVT66+C962oiAcfnh3OgNTn/sVIn0LABN5czIynfevlo0ZCap+hDs4XxuVDGIqSv6zw2pX
	EsTStx6xLyZNlrl1cE8xNSCaVthmOTOW2KXExEfb2L7YFGlUWhpA=
X-Received: by 2002:a17:903:40d1:b0:2aa:f43d:7c4c with SMTP id d9443c01a7336-2ad6cf2ed03mr12795715ad.9.1771578183218;
        Fri, 20 Feb 2026 01:03:03 -0800 (PST)
X-Received: by 2002:a17:903:40d1:b0:2aa:f43d:7c4c with SMTP id d9443c01a7336-2ad6cf2ed03mr12795335ad.9.1771578182709;
        Fri, 20 Feb 2026 01:03:02 -0800 (PST)
Received: from hu-raviravi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a9d58dcsm177208625ad.48.2026.02.20.01.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 01:03:02 -0800 (PST)
From: Ravi Hothi <ravi.hothi@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ajay.nandam@oss.qualcomm.com
Subject: [PATCH v1] arm64: dts: qcom: qcm6490-idp: Fix WCD9370 reset GPIO polarity
Date: Fri, 20 Feb 2026 14:32:20 +0530
Message-Id: <20260220090220.2992193-1-ravi.hothi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: mI9dRHcCK6_8TmkH3V-1f93Pnso1uxcf
X-Authority-Analysis: v=2.4 cv=dqzWylg4 c=1 sm=1 tr=0 ts=69982348 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=haSj3lwk3IxK1SysDa0A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA3OCBTYWx0ZWRfX5Tg/d80HPtxV
 Eamjmnhs4EJ4/EZH7dM4fT9dbjC/JFgZlYlhrqBXdeBUyhRooYGPYpBuuIagXa4NB+AW8b0FXzA
 c7QipHJIdnAyXjRJoV+HmslEdmQ+1VqSUHezaDVETeHfhVfWNBOK1e9fITkFkwtYYj9tEW9CTPG
 Curyqoey0mUisXxeK9Ifd5xeZz0wul7GhWNRWdeFLCjBCPiK5n5WYFElJeA65cJoEdymzul8iXL
 pBQeM8+POXljqzKCAEv3icUWairLA2y6sh2KsW3143DRVSrRqur9Qp53O6ScnyZuCAD/nnKpuKA
 HZW6QzeA4yz09I2InbId8bXHfoT7YR07Wn13K+lVrFcVoSPT+ZeO7diD0VqP+gOPiepRyEsx1Ir
 QhN0OQ1uwxpd3Sx9A+RwU7/AXmStOorsrKqGcrZjMldITny9UIMpPkn34q2me9yyDpqpDEI/+65
 Houn5tifG55X2XV/bSw==
X-Proofpoint-GUID: mI9dRHcCK6_8TmkH3V-1f93Pnso1uxcf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 clxscore=1011 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200078
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266863-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[ravi.hothi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 228D0165FF9
X-Rspamd-Action: no action

The WCD9370 audio codec reset line on QCM6490 IDP should be active-low, but
the device tree described it as active-high. As a result, the codec is
kept in reset and fails to reset the SoundWire, leading to timeouts
and ASoC card probe failure (-ETIMEDOUT).

Fix the reset GPIO polarity to GPIO_ACTIVE_LOW so the codec can properly
initialize.

Fixes: aa04c298619f ("arm64: dts: qcom: qcm6490-idp: Add WSA8830 speakers and WCD9370 headset codec")
Signed-off-by: Ravi Hothi <ravi.hothi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
index 089a027c57d5..b2f00e107643 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
@@ -177,7 +177,7 @@ wcd9370: audio-codec-0 {
 		pinctrl-0 = <&wcd_default>;
 		pinctrl-names = "default";
 
-		reset-gpios = <&tlmm 83 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&tlmm 83 GPIO_ACTIVE_LOW>;
 
 		vdd-buck-supply = <&vreg_l17b_1p7>;
 		vdd-rxtx-supply = <&vreg_l18b_1p8>;
-- 
2.34.1


