Return-Path: <devicetree+bounces-249194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 909A8CD9D0C
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0894F3005032
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6016C343206;
	Tue, 23 Dec 2025 15:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kbKzobqv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JjioHj+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59EC34167A
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503534; cv=none; b=W2aDxjctP1eLh9L2EHSUhzUEFn8Tu/b5Dw+jvr2rNHCnNY9RRNhwdu+gObnvSiV1ylqMNYux5Afx4AxTOEbBH4k5y8h1wQznuw1wvswzfUe31rJmGkNngE1Xau4UPMuw45Mbi4ZmGYQPWmvRz4mZE+BcX92dKrvhRqsG9r/gPDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503534; c=relaxed/simple;
	bh=xIfSJeo589SRPKtJSO6CrC0N3gnqFdUQkQTQqQAKRdo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eRs11q8/PweFov+aAE9vmm6f5qdfMQKz880ivksalhy9rEyIXR6zSlHbK6RoJam60kZE+qjNIdhrlyTMT0/KLhoTjBl3Iq4Q/SRuqbSGuWFX45xuac6wBP5VnWcLLE0jyx/LaSvG1yoDqfZsjqFNzKAqx7ZAYIHY1rISKTeQJ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kbKzobqv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JjioHj+8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNCdaqF559947
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=1OJbf7anBDIRc8m/HN/xjUDx01xgE4rVa2h
	45S22LCg=; b=kbKzobqv6m80zOhSKn8lVvS1nRaqX31bQPhnsn3VI6Jhc5E3DAa
	IgpIg4li8mTtbQgiewz/q6CkSoDwyH5Q9hcUp8gvSz9pBQVHFK07iAhoRsZHrR/T
	yyP0JiRL+iJvC7WNmxUOlvgA62wCljmMncxm59Eph7Ew4zp6Gj0+BE+uYtoSh0w/
	/Rr1IfAAMJXkN6bXgo+HfuPkQhoIOftxErSza67VawK6XNHmUdhF6dsCEyPAW1Tb
	wSFRjRXAgN7MR6YVX9pZr6r0JGSU844ppd2fjryHsPsbR2N9hyTrtLPPzulYr7/O
	tOJgAUJ19C3YsriUUvIttVL1wQy8nNBONnw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9creda-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1d7ac8339so167737961cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503530; x=1767108330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1OJbf7anBDIRc8m/HN/xjUDx01xgE4rVa2h45S22LCg=;
        b=JjioHj+85oPK8zXG6FhwR+IHj6ykzpN+/aa8IBDILivFH02Ojrs0GojLJvnyQI1BHe
         N4+EAO/9nSO8v4BgfE5Ayq87HDzLUAEz5UWGgXFxstoD/5Ym5cyu2LoEuuS9V3CTRuxC
         rENkJxKGVo2YAgPNvTQDNNBaHrr9Pkq0rQSSYXDSU1yqXoSuBLGvN/WPvNgesZ5ECvnZ
         qPINSjiNSNWnEUte/UbTKIosD79jD/t2eCdyRJo10G7S12K6r88lKIgITiYbVC7O00qP
         Eg7Cmxd6LPwpvWNKlLUXrzRHeLHo7LjVbCFr+2/HXO8yayWOaQv0N32xuPUtKr7zHyFd
         8srg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503530; x=1767108330;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1OJbf7anBDIRc8m/HN/xjUDx01xgE4rVa2h45S22LCg=;
        b=KHYXhnv3Sz5d9iWGJQqB1afM1w3KS/YOXC1F4y2wtbEH5IT4qNV7onGIzvYQbFmfrc
         sG+aEPGevQ/w+dorB3uctj79HDcOPJU7u22NQS5VHOD8Nks7pXdXDxcurWHc5mjL24Xj
         XM/g5QIxFXwmkIQTZ4xig7/EmN9FUvkEfTxvHUag2Gp/h5y0lghVbgyO/1hUbNUf6G7q
         mT2KEM5dOFQGUEhExECyzR7eAOKM8rNU7lKYiUYsO23cFWNtze3umNvnpwKtlIjTGy34
         rujhUwMcK71rZ9UPWOtvazVwjw8bvHdBt67OSykVIg4+pzOic3A2thqIuvEDvGyNShye
         YSSA==
X-Forwarded-Encrypted: i=1; AJvYcCVzIZ3Q/W69awi5TMKRMcEg0SjZRqRqDBuGw+NhyM3b46JzmJgXgLPlFV5N58OF30+f4wEP3Qq5wJB2@vger.kernel.org
X-Gm-Message-State: AOJu0YxVrZRh+S6pnmCtobCldLfnIFsDbVI7EnuR9nV3tQPt1B15+AwT
	h+C0voOKPxqtY/ycZVb1R+Wr3Y2JuAYvGToVwq5uBfvxV20DwJ84oLKt2haNporIzVGdNmRMNcd
	BhLRym0TCoUxbhffldGiENgiSz+BppInA+S1KYTXjLbULDOQrdbt9NvSKKfHmDA2s
X-Gm-Gg: AY/fxX5W9PBuZammaim+GlZCioBablc5hn8yM1gCD32oZSMir+DvutRZxkk8cB9B1t+
	dl+Uq8q4yQH7Wb0C2kMxuLvhZVQ7UqFTwuIbcNU6PFdax17WUssfe/2pIPVpANdp3T7s+YZAJWe
	RMEIjWGW2UJmNQ4mrZ6n/lQ2juwkpjZvbIon2Tq46wQlb0rFUKHn61xVCAu28KlmcUnkabEBFhq
	E0PbalPPt8gc6H7waVNuS3a3u674LyAEfI5H+Q7jYrEEEiztkJ0OAMy34prqLvmbhPt+GTG/3Dn
	i1K2M2GvOzisOcg5EseOP8IGsG7qS/dY5tN7osg3GjbhYG131TuUtg0wBx9DxOjmS5tpwrMcjJj
	pECoIEv/mK19dK/9zJDTXRAoXvpTl6sOQDiQBtlnrTGuIyVJ5dIZk41ywDnh6ppOXCiA=
X-Received: by 2002:ac8:5ccf:0:b0:4ee:28b8:f110 with SMTP id d75a77b69052e-4f4abceb823mr236615361cf.29.1766503529832;
        Tue, 23 Dec 2025 07:25:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrnbsE+HWAwXiurBOJEEg2dgpe8DH83RknRyujky9Aogq1yQjJIOb1156ORxCZVJMxYuqyKA==
X-Received: by 2002:ac8:5ccf:0:b0:4ee:28b8:f110 with SMTP id d75a77b69052e-4f4abceb823mr236614771cf.29.1766503529284;
        Tue, 23 Dec 2025 07:25:29 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b914949bbsm14003705a12.19.2025.12.23.07.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:25:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: airoha: Use hyphen in node names
Date: Tue, 23 Dec 2025 16:25:24 +0100
Message-ID: <20251223152523.155523-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1152; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=xIfSJeo589SRPKtJSO6CrC0N3gnqFdUQkQTQqQAKRdo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrRj68U/p+elB+9N3aoYvdhSDC7YOFbGLSNfp
 KbMubyRsamJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0YwAKCRDBN2bmhouD
 177ND/sFOW/pfKDGyrzEKDFDw4TNKaSol0k/GvNREWzwA9tDVlKKyA7l2iLMNUKQ4Jq2Rdf9EBs
 lCtUbyx0EUBQ5xSWj/njjEJm9B5tmRpu6NTPjLIOp0cWcsJwOGMMvSt2ElIqfntgLYI+wqqSH1x
 /qk1IQu8064YWBlT7cfCEi/jidblqiSnL0pr71x6M8Bn51ixnZnyldlK+52SzcsOW3m82KKDWo1
 rqmLmbRIZYySdloozUSjth4gCs8IddBCFVstDKrm9Ea3kEomLg8bX3T4FJ78PN1dlVrufKncWnf
 ylTrxooWg98IQNljiOrSvwV4Pb8cbC85dTManad+AwqjVMf70fq/y8pluJjAjPq9MqT5nlbakR6
 OwnqMiD5xnOuUs6F2dQdyhl9wga/aTM5Eqx1c1j9GLK+csvhoAQQcbBlkcZBjy2/A0jAYqTVjs7
 hbu6xmEG5kbPNkXSUMidn3Q05QatrWTW3iDz8z0K1JzSd/+OVDNxCIr0LcM51FrgbM2a8PU+Voz
 aPWuCNeeHJb6tAcUqwrEKwb8wIEpXH0+KW2K2hRQjWQkHKkHkncC6EgnJSIrAMypMzA1x+Yol/7
 sSi/12RRuR4dUtUjie3q9hK7aGQ/Z4tH61E9mbH5cp5IYGLgQR88+Ht88Kb5yQkyxNxsQMjja2j RpC7F93WJ5KG2ew==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: UVmL-1BzmsEzGWI5nz0lJ4cXrPLiOYoK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX4MgW3L9MOnsr
 v5uxwlmxKSCT8++vjr793B4BWgWhHMVkK31s6tJ4mCVeZkg57SgBgXBg2d6vInSgpHCkOoS9q+H
 bT4CNcVpMZKo+suhmlFoA2tXUOxGDk7QmJk8XzLX5qCOWVgod3yEDD3dC2GogODQIyA11QoAa7j
 VpIG8/FUO1Cmkz4uI5Qb3t40qBA1qhxvhUA0a+Ezokb42qNYWn6b830SYKQykXQdJg6cCMj98p0
 dO81DGyvEE+N8tKkfmztc2wrbntrJZ46kFoZNFtMN1KuktAWiaSjOwBHOwY+O1Oyma1eK8AfvQr
 F4Y3vPr18Yf5POA8XCtnxbQXVWj/8LkQIowBCddwcl2ndyfyLM/rZMxKP3ulrD2Y4cgfynD8l/n
 u4KSeGD9QbAZEjKgG8rNLMf7ejU+YkpwXErGpEVDdsKG3LhgFNSwrkm13nRBGRTwwrIIxfqgxTK
 5T/KvAWFgnq7mistcvA==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694ab46a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZcZdOxe6BgGqELRYw9UA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: UVmL-1BzmsEzGWI5nz0lJ4cXrPLiOYoK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230127

DTS coding style prefers hyphens instead of underscores in the node
names.  Change should be safe, because node names are not considered an
ABI.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index dae9968a4ff6..886e2e4b5f64 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -47,17 +47,17 @@ tclinux@600000 {
 			reg = <0x00600000 0x03200000>;
 		};
 
-		tclinux_slave@3800000 {
+		tclinux-slave@3800000 {
 			label = "tclinux_alt";
 			reg = <0x03800000 0x03200000>;
 		};
 
-		rootfs_data@6a00000 {
+		rootfs-data@6a00000 {
 			label = "rootfs_data";
 			reg = <0x06a00000 0x01400000>;
 		};
 
-		reserved_bmt@7e00000 {
+		reserved-bmt@7e00000 {
 			label = "reserved_bmt";
 			reg = <0x07e00000 0x00200000>;
 			read-only;
-- 
2.51.0


