Return-Path: <devicetree+bounces-266476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG2jCJvxlWlTWwIAu9opvQ
	(envelope-from <devicetree+bounces-266476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:06:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0107415812A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:06:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E89230117F6
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13F234405F;
	Wed, 18 Feb 2026 17:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="meBG60RW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a76L0nX6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC1134572F
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771434374; cv=none; b=XFEM+kfdBX5ttb80WAkM86WpD8EaCjmglhBcla0an8OsYFN636aWlTN1G1oXJm1/Uy0hr/rKqjUx0y9tN0JiqvF6WJrXLHwIb80Mar3aOZmeWC6v/kJDSDEaFCrjHeY/UuIKLDl4wzyiZU3auRywtOTMk5ggsjzXarxgWf4r1UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771434374; c=relaxed/simple;
	bh=Nv9pGojCe/VE5hFYibhtLF0yvDwZh+p8uvufT77/V6A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i5+rOdUZv8oapRYSkFMTT25yQL3W5sOdurL4SjpeE/8hYhH+H34MUFeER5OLdaCIY+x7MX9V4bwI2H7iUwUOzzO01i2vAYwugdtzGNRXdPunrNnScNoussxL7fvasi8jsSEyQM+djpiw/XL4WmeCdxAvbZH/BTT7UqnYRT1vUUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=meBG60RW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a76L0nX6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IBA74V1029676
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tYxinY7zcZgFgXFMXm+IMnrc3Meox+EVSoBjjAwkqeo=; b=meBG60RWX2mCm3G8
	UAx5bdKguw8QFmAWh8jtvzaa32cukSIcK4hiKu7HIheAOABXsXKUMykLjyG0P9vy
	YvsuEpDMTQ5rg8+qftdyWREp+rAsTEYmxx+Vv6/rZuLBU/gksu9Xz6WxoaWpHIMI
	JybotTf7QLM7CjLBNcQknd6hIG9M8aVT1yQn01Hz8xxFzwIEzIrYKsIitsSOaMGb
	lGtJVU2t4ejHFzTI6Nf0jdhO6tdgLZb8itG2LMLd4fDHS+c1Z5631MbN08htdHxM
	DBB+ZpzAsChSkMQBl99aWcpRItvCjNCo15Om6r7p/dqekHHdfXgTQ42hxBhEBy7T
	KVle1Q==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd13rtmrd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:08 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5fdede3f1ceso224043137.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771434367; x=1772039167; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tYxinY7zcZgFgXFMXm+IMnrc3Meox+EVSoBjjAwkqeo=;
        b=a76L0nX6JpetDGIb60/5k7yJiMQaXrfbG/Ce9hd/EB4rBHZ79aUHEHlMGGi0DIAKKC
         93EuJRjazzE6T97m0pGhhWpyWszmp8C4IVig5ghTEwclPv3EpCkvDk1Ts6PgW4vPSDPN
         TlZbP3DVpq3c/ToO75uEuWV8i8/LOaUPFk+i/6iQkVZbvcLSxSUwP4395eumT/qkFd3E
         +f7afh1QDLD3dbP71eqKDH2IgFdqhoKCJ+CUnKC6I8tnVT+m37GtJCdUKo7N1tl33/9e
         L0y0XEAab1Kj9d9Q6mjGvr3aEEeQhRuuZ50vvAzkvNlmAtyqPy1NdP2bidKQ5e53fs4l
         ZY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771434367; x=1772039167;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tYxinY7zcZgFgXFMXm+IMnrc3Meox+EVSoBjjAwkqeo=;
        b=jCrJq67WR0RsR0Ei7s0+FVCq0OtuN5MGF21KOerG7D4p1f1CVFkOHiLyeeEbvMU5xe
         SPOXUoharxXSWgJGfcXH6Re5+UsFcM8/tLzkFsMK7De7zs9142OEaiYIj/9nXup4POAW
         d8GUMxmafA243evSs5DxIwp+3FwbITT/WCzVglQ6XpJObpqoloqJ0ysSEHoUvufeNiKr
         Kq6liMhhXhMt21EfXa8p9SeB9r74mXD+F+VEy/SBYLk1mIx52lx1QEr7Gv3acA/EvYFm
         yRYvwjyuiGbiJb4xS91OX4xDJTh/coFoq9q9DxaI9llNJJLOZrUXscJwJcR72IUT0R8J
         wphA==
X-Forwarded-Encrypted: i=1; AJvYcCVSuytAr+h4i7YbjicBY9vrwV/IvotMF3LUUZoYE8L1UGNKjvoM1X7YI5ys/sOX0VBiXpjcODLjZY//@vger.kernel.org
X-Gm-Message-State: AOJu0YyCNX4eD0tZWxzREcKVrIUkguZG5+I2tui8JeS2wV5EE19gqpMT
	sf/7FQdMIt1VgAaUqniwJH18QZOhGwEMPNkrfc0MlSFkk27xXSbetoePkYNpf2dVC9po2+rtD5u
	1uXhvZYNXtUQoYcMd+8OAEafefaLOrdHJjDuUk+Cbas7+yS98DQPkKn93O4t77kTEG7wO7UB1
X-Gm-Gg: AZuq6aKSvMProLT9/JoceEdBtGncCqpCnePqD6yKYb0d0pQbjyj3QB/SP+88yhhnyYB
	rC1o6PIxVqZWNmwBnp898GsfbZW4B76s/TVyE0DQZzNSvPV5IeHvq7Z6bwCgAp9VpPI7/CkDMqv
	Vnc9SczXDhmUcYvvJ7y5qKZeCISl03iTWqPolnPngoLZneuWkLirPLgbO2RB0bxSAsjJA+ZoZQx
	mlY5pWl9OTx4LE6C6kLXjmnlSu3tLeyI4hMGOXevXblRMMwo8HRQo5HKpc9wZMlRGV9cYeQTaEK
	mLzzrH9qNXevupoHiOD8FeR4rOfADbxYrbIVHcLJhHAjwH0JdvMeAgFBUAkuL1VDpPiwnosvRiq
	gZG0gY1CCZWPAmSSlIoh5JTWm/6CQ+qr9Xj5iuY78i17yrA==
X-Received: by 2002:a05:6102:390c:b0:5f5:2539:9b11 with SMTP id ada2fe7eead31-5fe2adbc90dmr6938199137.14.1771434367567;
        Wed, 18 Feb 2026 09:06:07 -0800 (PST)
X-Received: by 2002:a05:6102:390c:b0:5f5:2539:9b11 with SMTP id ada2fe7eead31-5fe2adbc90dmr6938180137.14.1771434367175;
        Wed, 18 Feb 2026 09:06:07 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d994670sm482188845e9.4.2026.02.18.09.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:06:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 18:05:45 +0100
Subject: [PATCH v4 4/4] arm64: dts: qcom: sm8750-mtp: Enable DisplayPort
 over USB
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-sm8750-display-dts-v4-4-1743e9848864@oss.qualcomm.com>
References: <20260218-sm8750-display-dts-v4-0-1743e9848864@oss.qualcomm.com>
In-Reply-To: <20260218-sm8750-display-dts-v4-0-1743e9848864@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1516;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=Nv9pGojCe/VE5hFYibhtLF0yvDwZh+p8uvufT77/V6A=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplfFzL8CYwOckYxhBve7op8wqDcvhZ1+OxKY88
 p25aeGCR8mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZXxcwAKCRDBN2bmhouD
 15e8D/0QtKxigr5VbfWNsSUHkRKXDP+dhYt8WyVgwEAh1YEdRFGnZIbMk2Kx68HYGDHbb2eGRBT
 rZB42Zpr/UaIiXQ1GGcgmym0kUOcXccd9A2GrvDsP1AX2O0a9KE+G4LYrP22FPR2JHYEa5EuutM
 hRtefeZwGmJLQZBgzuk8BBjYzToWVd/e+gSmYEUCDwXmZcYtXgrpB3aRIdOI/v7wKHWpMgBq+7z
 q0uKKWpSEJFRdpGJfRdobg6vICq/RpwwxEpapDlqv8dGriyLH5j104Gumk8GIvv/R0c/mS+yA5i
 GAxj3kmLxLJWhx7K+p2AUbBA/aW6hG42bA64dtD0VF/0VDFhMxZapw0N5s0ErclcJp6awzCI12W
 x/RhaAFXdduaI8Xr2k9nUlOJZJ01P/OzDKuuuV7XoxNYdoFANtfkpgONdOt37Nfm9InISGenzmF
 KliLlMHHlBDqy0aHA95SL+ZUPu7FU3NInX10a6YZ/PE00KYHqcSMZPAfiUc+j3L9t2BEHs2or9D
 DBmWLrTumvLvkH5Kg+NR0v6wxffsgOkBGHa5DsnTfeeh05jnScANrXQGayxYdSBezADKPXrnPpI
 bgeh3HynuIolW/F9hZ5sIVEupKdqrWrRhmisYgj0Wq2hCnMiKjpmGLuh0CtGgfPlmurTzkQEQxs
 S8cAfaurZj/32jg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: gbBspFo8CRgukEgleT8vtZvxmzRpDb8B
X-Proofpoint-ORIG-GUID: gbBspFo8CRgukEgleT8vtZvxmzRpDb8B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE0NiBTYWx0ZWRfX5WyP5+QhwmSY
 G78dgxVI88j8DhM7yOB5CdDGinTT8nKBXx8Y62YNGW6fkYJi39Q3B+vmRnoCS06ysjzdn7kt+8A
 Jed0d6c7bn6Sa1kN49KEq4d7mj3pB++EUKH67OG8jldFPK+piJrAuN7BxN06hS3HJhakaEPiVsv
 xbFlF1Z6hJAPGUbZgugKYN235Aek6aySHRHGhlFwzW4DnwLgNVitj6wkKwIrtsOixxBZ7vVAD2l
 enI83s+kiGNJB1FVHGnDeUqFcKFwf6s9F/NY9p0kSoe5J055iszDkhNtEUJiu2s+MxVgYaSt3I/
 zWO5LMMd2L6dVDqM4afjzoF96VCyD0j7k8kAFcmjI8Cv95+qcXfuqZv/F2m1bywvccU7tk62LWO
 xvaxbq5aRbgb30YRy0TEy7cOdRiSv4vGWMu1riAHZUYt43RcO4LMWFC+nxqQoqnFFaYDsDPrR4F
 I+Yg4eOux/KflP72ujQ==
X-Authority-Analysis: v=2.4 cv=Q8rfIo2a c=1 sm=1 tr=0 ts=6995f180 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=geaBrObO2TRU0f7BpigA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180146
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266476-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.2:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.1:email,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[0.0.0.1:query timed out];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0107415812A
X-Rspamd-Action: no action

Hook up DisplayPort parts over Type-C USB on MTP8750.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 8 ++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 6107a4ed2c80..3837f6785320 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -987,6 +987,14 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+};
+
 &mdss_dsi0 {
 	vdda-supply = <&vreg_l3g_1p2>;
 
diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 82963f4a6a55..d2352f60f86b 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2789,6 +2789,7 @@ port@2 {
 					reg = <2>;
 
 					usb_dp_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp0_out>;
 					};
 				};
 			};
@@ -3403,6 +3404,7 @@ port@1 {
 
 						mdss_dp0_out: endpoint {
 							data-lanes = <0 1 2 3>;
+							remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 						};
 					};
 				};

-- 
2.51.0


