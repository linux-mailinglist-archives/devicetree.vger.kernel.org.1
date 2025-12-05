Return-Path: <devicetree+bounces-244698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3A2CA7EED
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B97830DE5E0
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 14:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3DC329379;
	Fri,  5 Dec 2025 14:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="maBHIwKs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YVwwkhOQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6992EBBB2
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 14:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764944627; cv=none; b=B3+5n9Aw+eMzT261Wo4rS1qgYraMeiOaIA29bKY6QDpWrAF9A58vBby2wCKSAjSP3c8WpBt/KCn/xP/3kD+qC9PTOE+GSKabtcMOCKATBqnaiOaZR8jBtiTvNv3SrQRVU7vMs9U2N6y7i6S1eyEkIVxRrP1lK/fFTgxdr3vGZxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764944627; c=relaxed/simple;
	bh=GimUc2ePlZuvy1QOu7c/n8QletDRsYsWJFcZcb67Pjk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d1ATtjH4RKZ5ugL4IwOtP6owEx3Un6Q5jihxw959ZRN2uoUdMAq3JJfslrEGNaNn/6jyLIkC00sOQIZsBz1kEJIinskK8IGeJvRXhsVXJNatSJoFaKxMigDY9wCO21XK+cAXuh85lB2OxRNBM8eKII1goY3aiJyR3ehFAKJyJh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=maBHIwKs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YVwwkhOQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58MjoL2516892
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 14:23:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=; b=maBHIwKsp2Q5lzg6
	TkYJ2c/s2exAsl1JgSSeIxvvlUk8pV/KiK1jZ2TlvaRi7YVERzSXRTMrxPZTjm7t
	oGhVr3NUcJGg7qWuxm69RGbTGSXRsJCps0Uf0oTmE5nGMxxg9zE8E66j/N2H8Y6p
	/jaa0kr7jYp+0M4gctW64eKN4m3101ZBQBrc5Q12p/9mpZeiVm18Kk1LDQpVuwWN
	FTz6iF5qn3waUXv//7bODExJoHZly7mn/RR5M9uMWIZZaf+H4UMs26NlWWeSlyTt
	gapz8Wkp2C8tLDXUDamWst5sIj6+cpw1sNP/LGycX9B2xXOX9gNxpzVEz0CgrKOD
	bCb4TA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auj7n2e70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 14:23:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b55a033a2aso559936285a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 06:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944621; x=1765549421; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=YVwwkhOQZtioFra7sNO4ScEYUhxdearHTVd/nu1vXRXNyqx2NUN2snqFU2GH4QpJ/r
         c4f2dYwtUe3RTXJzq6UzMpzkl6XPyq7dIFkod8YKWkqpvWTQdv27wuFZzCoNS83AWdqO
         IqG5yAcGbLNlkexRpWDIxFahhU8+4Og0xLv2N9N57d+L0rT5Cl3fzj/77t7HyerKLdos
         WRv+sdF0Rv+t8bckwiQ8P03VbkDhP5agCf3P3h3bxBRSVTRE70cveZKsQCYnLRJ4htV7
         LdF/xUmK50Gf+jas11ME+nE4B+FQnNDpTQUfynhX2YUkhf/k2eXyvcV3nAjePaOTq7mn
         MxWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944621; x=1765549421;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=DYpGtkfFU00zqSvKXFFdim0eW27x8tHr2RXss63dBLmQ0WoC9u9BOx8okVoINK7b4O
         fU6Gu9Fqq2uBMzEEg4VsWjEtK4n2L+K5GtZay9G0RtfknbZhys0JaSoiEHfzw0Z3Kb65
         A3nj6Mgm0dFQsClKfXAUXd+GGi6C5yDjapsdykXL8pm6Tj0aUB+04z7QO7E/G3h8jsa1
         nS7xj/D8YRUVYAlKuQI/4XFZik69zHFrI1tkM/FqPViBISTIpT4uM9Vf+QNEdaUDUh5M
         V69T1Mxf6blcVSsubJBeYNMT9aYQ8wof8x+KLmAq6w9/CYoEDycCtnCUDgCS3xlLpCnl
         vSjw==
X-Forwarded-Encrypted: i=1; AJvYcCVXmz8oUNkdv8U7rLl6qWCSNednglntM81ocHO6g1LisRJSdjG6NFllbt/xXLa8lFWKKd8dxf8TX//g@vger.kernel.org
X-Gm-Message-State: AOJu0YzNKwcWn+oOtjj5eXUgaPhyEGUBQxtTlO/V7Kl3PTUSgFv+86Za
	GlLKCLbQ6B5n4neFRf1xs6772sCM3xSroCiXieOoekEh12HRd+oaoTXFyXv+N2jcSO0Mut+pf2M
	iOAdb0yu8w2r+qKHNYlqxHBu5ieprA6OKC2nuN2Q6KkOVqbadsb8EwEQYznDavXMo
X-Gm-Gg: ASbGncs0GzoC/S3JPLFv+1SehPAh8MRkHq/Mqb76CkhvkqkHx1dPSTtFtQ+Xb8ybYCG
	X9MVwIpdNGTa+MzoYmZTaPxRckrdlcLjfljS2y8Rvr2uKU+HjJJBoL4ZAHxMuGwd9ljrIagYQX2
	z/T/SOMsV5L8D4qwXRuc88nfBP06zxz+3/mdtNdAn3/sFNBZuW9d+miCoyNwHG3se6XvpOsqvmN
	gndch7KA4JJFJ9Z1BNtbczipO8tgvx7NHBCwMr7DbXP7E6ExO7GZa6v4M5fLeU29rPjUqo6qdJs
	C2AfF46FlIxY9G8vrDhQRXSsE8cymKxdL12dzSWzHFdy75NLVU8W8nBgkZK7zxCA14fNfUktbNl
	y4/gMhfolUU6yVqE=
X-Received: by 2002:a05:620a:2846:b0:8b2:767c:31c0 with SMTP id af79cd13be357-8b6136ee5dfmr1115232885a.4.1764944621348;
        Fri, 05 Dec 2025 06:23:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG5DLeDF5MUOeEd0Y3uwh8zOmL2/TE7Tcf7NqeHJtIonKuSqWCxTdwXxHzgl2J/N5U0u+0xYg==
X-Received: by 2002:a05:620a:2846:b0:8b2:767c:31c0 with SMTP id af79cd13be357-8b6136ee5dfmr1115224685a.4.1764944620730;
        Fri, 05 Dec 2025 06:23:40 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:40 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 05 Dec 2025 16:23:20 +0200
Subject: [PATCH v5 1/4] dt-bindings: phy: Add DP PHY compatible for Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-1-201773966f1f@oss.qualcomm.com>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1166;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UjT3XNaICZQxaI2rtQkKLAQyo6ogQ8qaT0RvJnH3+s4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurkYipeXP0Khfx3gZTg6GV5H62s714w3l0Du
 DQ9TiZBE16JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq5AAKCRAbX0TJAJUV
 VtX6EADNLN1GC4Br2P4WQlwrPRF/EVq3EEzgOBQffcjVqZ7WxSwm4CGZz1sayUYRgE3FPKL6IKa
 MVXLseh54kQhMta85wAqumsYQnVoLchalVJ4dy20gaTEPY8qCNXx+Q3h85l4h9NHA7LIp5JQeNs
 h3pd2egcNYf7+jvYdfoPSLD1D2nGpBv+3uiYeYW1G9GZ3KxgzY0o0y1idv2pjOyBl3d0OsyS5Av
 VYJO6cT0hhQTXwgU4lsntAyqnAoCwbGON8o9DzWdMKQYvY2lPliisxsQ25tBmr1iyGghiQgD/sv
 lQb0l7otoeHgx7lPzYPia0rxiklNxHgKj5NKUcnNHr1VMl0S3jPnZxqy5/fqH5bdbWJa9ZnzXwD
 L5hk3ePJ3G6x1r8WrMwktrVLDTkQ1GGw4q+WtPZ0b1ONOFuoC2LifgvSfJQ01itu94h6q5hFRvX
 wZonZn3e6cRNcAHCPr1d2WU3VukoN3RyqVgfaOrP4l10xuZJhmsnMgf/RiOZZjmNHQjrGJvOSxM
 JWfLGT5hf0IZFxMQT1E5JWkiEtTfNtJSzXZxys3iMY/z5v9N/TV2O5C5k1gnKp3biFeapwmT6sk
 C0pz9meUltF0QhzXh46BECbMRI5IeqlVvG35Og7y7fDTVdJ1Z+lRshZPXjSHjAKIKPMYA7L5D2y
 KcPsqQnX7G7KeLQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=DOSCIiNb c=1 sm=1 tr=0 ts=6932eaee cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=adPXzabyy6ZLveKXoAMA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: _It_hPy3LZDFqUy74WtpoS8huno073B8
X-Proofpoint-GUID: _It_hPy3LZDFqUy74WtpoS8huno073B8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfX8mTQJWTDmKzD
 frZubKMer6ukJgyMLGIvT6HnL44K4fnDlsL6wbdpQ+wGuPP2bSgic1Quhok/mSWScd7mCLVuBti
 rffzxbAOYSKc97Fn06vnzdZv7ILHmosiDh11gQhavpKdNZX9BRh20UflmMDd+YIP7Csq8PZBlVV
 +DIW1jwFrNooW6uNFTqwn3aK/a4ZGMuEbBxyRlM18+swFISKm2PY8MaKwxKIVIAZdU4g2d032yi
 VMPsQde84yniz0Sj1F235afWaCg/qnUZb8moi1eWdC6I0Iw0z9dtUu5w4wrJ63GEWmlr/bYUxA2
 +5/79XbkaenCi1hc0M5+9ggLsuwTO782oWJhkVOMmiSXVLkEa3F2aSqzwhk4LcbISgDOmUzbbzN
 FYdF0dHQXgDGUHa3cotEP5dER7DRHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050103

From: Abel Vesa <abel.vesa@linaro.org>

The Glymur platform is the first one to use the eDP PHY version 8.
This makes it incompatible with any of the earlier platforms and therefore
requires a dedicated compatible. So document it.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index bfc4d75f50ff..4a1daae3d8d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.48.1


