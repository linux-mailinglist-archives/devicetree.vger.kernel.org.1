Return-Path: <devicetree+bounces-248980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB6CCD8144
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 05:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E64533019852
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 04:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A92642D839C;
	Tue, 23 Dec 2025 04:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gh7SeYb4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B0O9HRV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0722DC336
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766465324; cv=none; b=HCZUIup/BTEthklDRJFk9MZYJ2+nqUY9X/jE0y8GgIMsTebdRg6UnjDQGbqDJ54gvf3W3duGiNKfnXxxKiuq7GNF/SIizX3O8YuXZEoKiGrcEWRBMya6jFgHQ4sFCB6HOD8uNAHtxXgP8uV3z9Jr8wgZdwt9H0csNaNGCTTjq3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766465324; c=relaxed/simple;
	bh=CMGGQL5QWJe/piAjltmzUTUwWcG5aRX25Q9dhRO6gxg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rN7qEhJekkTADvuGlEmiufAGA+zywZhUg9t34jzn9YfjPL6hbMkLqunolupP6m2oS3cnie96r3hnk8mEFA2I+TArfnfVQFJ2MaX+8t7BaOCt7AbP1E4yHf0JfVb/gyWgkL2vxIYx7mxsjatnNR6VlQgoIoe6xp0mjPsvjK6uBWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gh7SeYb4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B0O9HRV3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN36qO51530059
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:48:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j/hDBX5mLgOSdIJryYj4Sqei8YelgVM5i3AjtuOIU7c=; b=Gh7SeYb4eVnkcWtL
	Mnwfvgriex8bSxw7Lo8ur7gJ3cqt3hfqn19jnkx+tQlEY48zJbPCurIU44hMi4IZ
	es4w3nmI4kWL4cAv7ZRy7v9CTWUTNDP1nPMR89zrbzEkZziVMuxBvKH510wrLzOa
	wIs0NaY1Wfwq00RTX6ZuK/RqxpmhCa7PapIua7P4BYPmjxtiKnwcszXCoJYjk4+m
	OkyFBIbgdtybeexhrE7WfY3+h64J7erBUtk7PGaWGEOqEOOoOoW37nHK7V2hf3F7
	jQM2D9dXr4ukwM/LOO+aFR/uZaJQp8cbwvH5jiyBrjk460rviPUkf0egHtkrzsSi
	jdV5FA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b758y2k31-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:48:42 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0f47c0e60so116448805ad.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 20:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766465322; x=1767070122; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/hDBX5mLgOSdIJryYj4Sqei8YelgVM5i3AjtuOIU7c=;
        b=B0O9HRV3fY0YGSw00rpa2+XJuk7+TSygRUcSXCMS3jHlPBjU7cYkOAbmADyUPw79OF
         31mn0qmJuRw9zj7B60m8bqJg2zy5fSN4NP4WJxIcYfmZ1Q6Cryf95g0dDGgNMN4uYloO
         PwK7jBnhUmF8zUoQcyrNTiNST91Sm7LdS3nMUcQf8AAK067DUo9seM6UpdnDauUm19oi
         D50KvqI0lulFSR4dHqCHHx4qhjGWOeMOcLHyF7YaNCo7joYuunnQe+vQhWXTkJHl8UeV
         68rRCXTnOqFou8uMaf7gYerQzgbIDnMXTUJyYBxUnNYwKs9xHajp1JQJi/ZSQuT4vPYd
         nCxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766465322; x=1767070122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j/hDBX5mLgOSdIJryYj4Sqei8YelgVM5i3AjtuOIU7c=;
        b=izHshCCosNuLlUw1eI4b+fH519qJM+YQXQihcObxrBB7E4Aq2Ij0uTj6gwBtYud80+
         ma/Q/xErmPJp1tThmQQkpuq2wG3kzC6V/rBkI8OvdGYMW7utmJw076YT7uvS5I9laaqU
         3ZwqPm6NEP3jkh0Mss/CCaLNtqGtnB9FbaOJUksqPdR8ZMet+lwYe6sCIdFkQ/YkqpDL
         z5XnDz9+CFsgdpoQZ7Kx9qTXsJJFowqjtgm2yGaRK4NG/tzO+A9Bht2Q9WSKm0r0RLbd
         qKrRYYd/L32+pro2R0QFvSFQWVPeJO4GdA4607C7YbJAB/tHR5c114tjnQ5ghfCSTqRh
         xdiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCIBvTMN1vK+4ynWvd3ruLIA/SSaL1pH9BOS9Qzkh0ONNEW+L64oN/gf/aiBohCJOFjxqBWYsCiL0D@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5GKmr40gvVukGGeLShchdzN3R5v+PhUBvArWJRjU/rM0ry2K/
	fs8w8m4R4WiBY5y9wjo6Gj9dMojUfNXpe/R1DAOf25rOFOiy9mGSorNeGVPQ5zJbyZcD1VERzQs
	cpqO+ps2o3pMKtsx1KUATUO13r44VnZIA70Vl+pfSEEuVr7pfWjSqcL7AlkyLE9zh
X-Gm-Gg: AY/fxX42G+4AtPQ9DA8J50x2TtaUOnWAvC0EWt1dHI8OZXW/SjOoRcD0OnN0PVPBbRG
	sQWGiNoBA53kHs+u3MYNJMl4N8f4vYZuX2lp5oE85C7MPkRZ5L9h8t9YitBHpyvVvWQK7Zvbj9f
	BE1ob+tHICZXlIrAvTvtGjaqDxE5V/qdv35N5OVWv8W0cS8osxCottqnnzTyRPkVJQCib00DyCt
	gB8GhTMnYfUN4Xm1t4R78Vv+h2VRS5QpOgNQJ7FJwRwQDbpU/9PK4auzMVUhp3feJcGVOGrWLud
	pjZ7B+K+3l4ongzK/21yMqpsxvOMsF3SmKzV5QX8VfznBbg8wE4qMYLvSVCCKLHi8gMmAKfCPGB
	RIPYhgBiHzUnCS5Taapp++yymcCYYqUAg8KE=
X-Received: by 2002:a17:902:d541:b0:2a1:388c:ca5b with SMTP id d9443c01a7336-2a2f2a3551emr153992165ad.39.1766465321929;
        Mon, 22 Dec 2025 20:48:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHri+m8RE+iDJJCDrA4k39KHtgYbgIzbV+TNylaO/2pNchET7js7YqYUWunXoEnf3dMeNdyEg==
X-Received: by 2002:a17:902:d541:b0:2a1:388c:ca5b with SMTP id d9443c01a7336-2a2f2a3551emr153991945ad.39.1766465321467;
        Mon, 22 Dec 2025 20:48:41 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c8d10esm111316245ad.42.2025.12.22.20.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 20:48:41 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 10:18:16 +0530
Subject: [PATCH v4 2/2] arm64: dts: qcom: x1e80100: add TRNG node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-trng_dt_binding_x1e80100-v4-2-5bfe781f9c7b@oss.qualcomm.com>
References: <20251223-trng_dt_binding_x1e80100-v4-0-5bfe781f9c7b@oss.qualcomm.com>
In-Reply-To: <20251223-trng_dt_binding_x1e80100-v4-0-5bfe781f9c7b@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766465308; l=989;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=CMGGQL5QWJe/piAjltmzUTUwWcG5aRX25Q9dhRO6gxg=;
 b=TGTiw49JnMKrMe62CtB5dYJ5m9av0bToWKPuGwOgYJWMqtgpAvGGtIPsuLXA1jHuZebz0k962
 ALs3zKyWZclCioTRnBvgcRwS234LAU2U5zGnA9VVrsKevp4c5BlUEft
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Authority-Analysis: v=2.4 cv=TOdIilla c=1 sm=1 tr=0 ts=694a1f2a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=75mWG-WH9mJFzEGoRSkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: qjqIKOGiAKYOsEnsEaXPowiYQt3L7ctJ
X-Proofpoint-GUID: qjqIKOGiAKYOsEnsEaXPowiYQt3L7ctJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDAzOCBTYWx0ZWRfX0zfZa/SIiq8E
 /y7wTQ3AguHS/nKEbc/tVD4P1ss2htx8MP9ZM4dAnXDrbtlTUPNnY5IpEkcBi9g4Ms+q4vs7A3M
 2Of0jcbX8h9+mpxuS6WxDI7MYHw+lxwPOyBqbEotKT57YwkrT0h5N/sxK4FNHU6eZKhIkOoRixB
 r1bjwzzgRk1UptTrpluYtFqkBlu2ZsyToHLuDU6KC5zrBMaZr8rSUf7+7CZ6JDr8jeccl+NmXvF
 MAdcubCWfxRAI+tdmXsLmYH2u2TckIjWKapG/gSu82qsVyoVBxlMTe99VWJ1L0G6zwsNubqFgp1
 CkBmoGUrLLe81HNkypA3MKlqMGvTFNl/cPl5xof/eYvaWj02Fth9v6/o31+Y3R7oK38qfcxNQtp
 c/DJijjxcCoJmx9zJoNHfLtqFC95rUptPXh7rrHPsOj5rbDH06pGL8mfaDe5Sd5a212QMbQ3gFj
 ZKU5Z4hQWPMx3BtpiNg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 bulkscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230038

The x1e80100 SoC has a True Random Number Generator, add the node with
the correct compatible set.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Tested-by: Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index bb7c14d473c9..1272f2d3a7c1 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -3060,6 +3060,11 @@ usb_1_ss2_qmpphy_dp_in: endpoint {
 			};
 		};
 
+		rng: rng@10c3000 {
+			compatible = "qcom,x1e80100-trng", "qcom,trng";
+			reg = <0x0 0x010c3000 0x0 0x1000>;
+		};
+
 		cnoc_main: interconnect@1500000 {
 			compatible = "qcom,x1e80100-cnoc-main";
 			reg = <0 0x01500000 0 0x14400>;

-- 
2.34.1


