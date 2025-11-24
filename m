Return-Path: <devicetree+bounces-241538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43930C7F9B2
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:26:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E59E3A158B
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:26:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575342F6198;
	Mon, 24 Nov 2025 09:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TFS7pZLf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dg3VjkK7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447BD2F547F
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763976368; cv=none; b=VJ6LNR+0XQITI+TfjkwNAVStnKqFChu+aa7znS94gcuzzCZggc4xL8Il0k0Zn8I07poqd2r+FnDfXRV7ceg/b0c0V+k3HcZKWmKO3IsF+s8RpL1XdpZJnTaFBfumkWzwDkK5+4gTV0IS1+M5BfmoQmGhkMZP8B1hGE4bj46XYiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763976368; c=relaxed/simple;
	bh=KIt7cKlQquEmvY5GS2dgaXPwRrPEqcNU02JL+ydYRg0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZOgy77k/wCzwI7N77Pgu0v5Q5za1ju9vFOtbEqcQAKj/Watomk5fWpM7fJqf59bKAyR3kaaz/EqdxPDseWejlrmaAuQd7sQgXpN1VDcKhvmF/YRxXqB/Y0a6Ir1l3XHun04N2GAMr39nvaLnPMw+MWQOAnCY8AxYBZEzuLOS8lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TFS7pZLf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dg3VjkK7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8BB7W2302222
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fc72aMPe1pxy+zOo3oPtGgyEEAaW+XipnNwxwb3E7WA=; b=TFS7pZLfhWi9m4OP
	qPxPiDC9CM9hvurraN+kFg8sAnyfZk4J2SbXDfBiT/qy34PCPt1UkahJUD9JwPo2
	jBKSBLAp41Rdl86s8TW3i6yLNeP0zDKk4ueAlv7jwqHjm1rb/pH+xb+3R5ShlM/s
	mDYX7YEo5bmEncV4siUd3yfm8dqTpsCvoF1c42fZ1fmPib1dBSWSU2BuME2JIcdh
	y7zi43DiTB+OqY7/WfOWp4+5Ew7BrbhPDnl6O9WaweYfVgfq80/3S7c9JHeSV6sE
	pn/OsIcogRGgDTt1BSo5/cKyAblOOq2nMSZXPXDw4t19rkyuGuoUvqR7AJle3JeW
	0WoE2Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak68dvejx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:05 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-295915934bfso64509955ad.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976364; x=1764581164; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fc72aMPe1pxy+zOo3oPtGgyEEAaW+XipnNwxwb3E7WA=;
        b=dg3VjkK7dDKq5fvEa7+3w9EFW+iaBECIXmTWj3J0vrM7zrkst6lN68XSTYSWRMFjcs
         jqaOjqVpYxqHmJ3tXVXAT/M5MZ5Bp+M+4AxRw/1kYYpkm4YqAjat3DkfNCojKgQWi3W6
         nNXrYKRCS7WSQ5z07jEfY2+qFaIuSHsakAOGeengjxtvFh3mAorWYVIC0ijDNyXGZF7G
         QKxPFTesJrTDDvLEvxH1wCBC2NaUh04H7eOzc3Ci16B8/XHIHGo+XzyYBQVZRnZxokEV
         ZAaEwtcscMstXqR4mVohrL3+/9Kw4jrNfTns9LSrmUoh4nsxs/7qEQfegU9MEDxjRwDi
         tV3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976364; x=1764581164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fc72aMPe1pxy+zOo3oPtGgyEEAaW+XipnNwxwb3E7WA=;
        b=uitp5Nt/WbjMIiwXB+Y5itwj4+kBa4JL9h++UVUDr0OeRgVEIuukdV+KNwSDBPHXwa
         7v3TnQEZYGLFNEbPtsqkJ/i1X5+1215b10ywUmIaivjTpWnf6x+8OYcz/oleICR9stIT
         gC9as0rymeaYLIIWODvHCUKeU7fviFJJKtIKy8IJhNntmaj8qTydReCgsmFKf1u8Yo87
         73Fp94fxiNV1coiJ7/Y8TkQ4GLX6BM+CLKS+PH5Kgp9b3uQORbXV88vMJQQUBesM5j14
         P4JjZLOvG1w6tc1PUoxX+ngKewCLi9tJQ2vERnhl0vl1yc4LL1xxx/p4wy+dUt5qoAPJ
         81fQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCzIQNYsvm8QRIQ4Jbfx+zBaNnWipA1kQ48JeOXFQtZC6pw1H/Ag8nCn8EDlGK0kr9FlaJC9Fn8gwJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwzaYw28vP9E1hLFJZfzZWtGFSvNtzT3hmPDANA+osgDZNbIA55
	YLi45OO8RCchySzyJjEeJnkNHhBdxou26SISPEYoTxPz8SqXZXkAJ0wFO1qdvmc0RDVhtYj6ycy
	NqEpYSiqqeX3GyutVNyEDoxVPX+BIHHYZrPathdiovkvRaAp1/Bh/tz7Ed7FexWzD
X-Gm-Gg: ASbGnct4hY4aRgEBmm5544USS459nLgzSH+ftdvcWhGHFFQFSHFFucShEN9IZkTrkx+
	nRvOS2J3x9ct9drquHg4UG6rKSdwJQZbmwR23bTYwb/c2PJLMBNuEEvS5p9gcOP4KQmjxZpQnFC
	gUj34jO7QT+gaThKk37SVXJXJ3/Ju4liyj1xRXBptgfvMKthC56tM0PX6FvC48ObeTrqIZ7+kmb
	iQwxdU+CGDdsGo/F9uHHsvrlXvReDvBejVPb6uDuqbMJVSGujQvXhjMVC51jBHVbKDspf+Zph3w
	o5xEV0F0a+vdA6AvgxQEVzOq2Sb6A0lMjvxm1NPZ+/elPvRSo7wyQYG2D21/2mSevnGQ2l90liu
	vTTC73J31SbCd+vBL+Nn/WL/zW3zZ3O9Yilt98gs=
X-Received: by 2002:a17:903:3846:b0:297:e3c4:b2b0 with SMTP id d9443c01a7336-29b6c6cf858mr142118235ad.54.1763976364467;
        Mon, 24 Nov 2025 01:26:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbgvv8hzybcga9wXoqKjj6h2p4mJQqNVWnriumOikqTQS2SJlOkP51W9klkaoWO62j7hIudA==
X-Received: by 2002:a17:903:3846:b0:297:e3c4:b2b0 with SMTP id d9443c01a7336-29b6c6cf858mr142117855ad.54.1763976363980;
        Mon, 24 Nov 2025 01:26:03 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:03 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:18 +0530
Subject: [PATCH 2/6] arm64: dts: qcom: lemans-evk: add additional SerDes
 PHY regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-2-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=741;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=KIt7cKlQquEmvY5GS2dgaXPwRrPEqcNU02JL+ydYRg0=;
 b=yP1lab+7XgMxoStk7b6HB0mteD3ztBJY357LBXaWxzb7WSzWw/ckisd8NHgcsqyT+79YU2QIT
 W/AQ+vidgArCEsew6C95kx9zrErnbgpHYml4BteIhRVx5Xwud0NP1q9
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfXwF7Y/E7kY8Ho
 C0wo5ajSoTcjhCN6M/TL50SwHYGKNmTMS3guDCK88Zm3MQldiWKi3ZkD83f4UtBAI2E5dXJSX0G
 4DFfOasWSkJbJwbNPP0x+F++mzfNyuKbdZbhXysHWPTw+jtJidEPV4iTWVB25cuU0A7wUOz1lmY
 AVcC5zkouTzu0AzdRnOPTm2XKo04VAcuBRwQpBCqEvB319ooVQlspMEZvLirvQwfKopcgcDJ4bP
 5FlCfD142N+QjgfXGuNdf4G1wdzMf2RTgiByfQ50FKSEpJGzmYENH++BjCBgm13TsqULKzHyJ+B
 mpTLI+064Zk48PiIem077z9XjbWss1fz8leXml1QDBTkaMHafBx0/KVVwnvN2mtkkPan0cbaMkC
 +HSEqCaDzM8cnhBVMyMRf08ZyKiSMQ==
X-Proofpoint-GUID: dYQURXRlU_0pedfArxB3uUZfyDtSf65m
X-Proofpoint-ORIG-GUID: dYQURXRlU_0pedfArxB3uUZfyDtSf65m
X-Authority-Analysis: v=2.4 cv=UsBu9uwB c=1 sm=1 tr=0 ts=692424ad cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pcfEnxZvWeWI-8Hz2sgA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1011 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082

Add the additional 0.9V regulator for the Qualcomm SerDes PHY.

Fixes: 71ee90ed1756 ("arm64: dts: qcom: lemans-evk: Enable 2.5G Ethernet interface")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index b40fa203e4a2f080f501140fd1c68b72d797fd00..7e5069101f093d077eed867f8431ba0d01797f4e 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -675,6 +675,7 @@ &sdhc {
 
 &serdes0 {
 	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
 
 	status = "okay";
 };

-- 
2.34.1


