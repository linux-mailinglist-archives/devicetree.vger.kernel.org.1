Return-Path: <devicetree+bounces-209112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87924B34A1B
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 20:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38F8A189CBF1
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 18:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A9330E83B;
	Mon, 25 Aug 2025 18:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DjOyVg57"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18FF2FD1D4
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 18:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756145975; cv=none; b=fuluaqY0B9NW/+9ZbhzWA2l2SF4028x7zM3qJUSYty2aEy/T7nPeScOSMbf4SRczUWw0FCGiLdptHc0rdbGobVVJ8iWbJDgk5DuPCDR3ARmD+1X2UTpL5C5Vo79IL0TD/KaD5lmALU8E7gEQZkyoPUMtjytocc/4kJsTtEBVX1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756145975; c=relaxed/simple;
	bh=Z0kZ7CUuc3z5own5uSJ060FKIchIKAXnRIi1NENCfjw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fzy3TPkUS6i1Zkdi6cy5Nk2O3Zgwogh9E8co9UMMWzEtIpfZiZ7dqdN5iAkromK9mJEWZbEajaBGr8SI1bphOcFQ/PjPCHS5AZh0VghDvA1vzZ+ujBGjMRUFd1ccKiIb21zvCDqAuN3UiAL5sPSdeI7SH7Sk038WT3d59Yo64VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DjOyVg57; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57PG3IV2019595
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 18:19:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W9N/u7K2gXkeEvZixNyEyu8saL0lvRgYaWEIkCSty2s=; b=DjOyVg57Y5WJcakb
	hjcSoI5aFBFhGvwmLUnVgQy6WyPIo6N/nHcfn7wJl7fCGH572FlaFG3tnF29x8Z6
	phzKNeGbtlC0Y8HZlk92sZuy3LuLAMQDiXHKHy4eUnNtsm/PnaTjIlS+vxk04H0N
	H/gPcQyV7INz/+qC85siDGvzR3NugzgcNTBfeTp/fKHvAGCywwLk+AkaRLKlak5D
	A1/GJmIyQbmwTdt8ncP+d3zjfCLkVPU3rOt8y8CYJ5mBBbB1eBN2CezQ0MT7zeO7
	0rYLAQV3K6M/27Zig+u7/9RyVyGn+350qcL7+stYIZ1z0jYTUAtxsATzwhzicsqf
	Rt0k2w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615e14v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 18:19:32 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4c1f0cc4fdso727033a12.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 11:19:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756145972; x=1756750772;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W9N/u7K2gXkeEvZixNyEyu8saL0lvRgYaWEIkCSty2s=;
        b=r+qcGWmnCVVTnr5GG8UibhnXX6oFse29SyP9Rb334IEHYWlWxyyGk5LLA9T4K9Fj9Q
         rmVGcJhud6PWSjtSGu2IcOLpXct7O7XUxGcquU84tn9T+TcVthbCtQBu7UPkFi6BcICh
         YiDp/XPtsSwFW6J2iW4UAmPxP+E9e5MuEH7vc3xDz3pXZKOpWMg82QNxAs+UDHlVoTvU
         KmTe6wcuV9Q+CJkZG32g1yh2sFIzm7Efu4ERfpQZQUtefJyW3x/3DcifczGdyEyfCE6i
         bnpxXZetSotWp8Xv4w54i333QSJo/rUfA2UFSbDeugq6GPx5M9IFI/MsBZJmZWkYg/lj
         0HZA==
X-Forwarded-Encrypted: i=1; AJvYcCVQZFRBBoOkog53JkBwqWF+8kTisgXt+hSDV3tlab947Apo+AO42/wDh0EDJeHa4JC1mJxOdfm+cHSJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz+5xfE0NLXivTZm+r2mqc2/e+tLjgVPa5hSmNQ+2SH4vsIZI8
	oM/qROBGbS6SEmFBgUQUtSoPNpx7Hiq7ZzpKlFG0/muSOZRLVYq9MgcSChWUXTfoWTUIuJa7sc3
	dAoTJlAxzBqXS6xlkpcgt+fUJXUYnQGUpxPGzu2cy5bobVV8c00byrAt3CkQcRvMD
X-Gm-Gg: ASbGncs4uMi5uF6Pfj3PRyyXJrAC0woas2z5NG8ytybHE4B6YhKE8vQLptTLx4tB3hx
	AmwGRTQ6y6cbuNKfRB+ppxRO9MZc24M36ATyQ0GZPCt0sNKZUWj/B115f8lB7Im5MO9plZpWjqd
	fRQOwW0O8I83/oot9qVVyFtpgaTTXLI7hlhWl7Pdo8P5HZ9cU+AC3bb6HkWowG09G2OOVYF2fcW
	0ar6moQFHPnbnJ++nW7RDjwD0NpcuWUu5S9NwU0BiY1Gk7m4/9mZH38CDNmS/UC/LcZjLXXO4JL
	Xuve7vehCXE0P5Ct/af/ozuf0dEK1/p04wYNRn6FjDx5aXg8PBaGSunVmYj9UdYT
X-Received: by 2002:a17:902:d48e:b0:246:441f:f144 with SMTP id d9443c01a7336-246441ff51fmr170733575ad.56.1756145971615;
        Mon, 25 Aug 2025 11:19:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoHCXN0pnoD1hQs4BeT0/dzqTl6jh6CQ/sTZS7KdstHbNbmX2M9g1BYidj1V41oZ6kgYySsA==
X-Received: by 2002:a17:902:d48e:b0:246:441f:f144 with SMTP id d9443c01a7336-246441ff51fmr170733205ad.56.1756145971129;
        Mon, 25 Aug 2025 11:19:31 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688647acsm74174015ad.87.2025.08.25.11.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 11:19:30 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 23:49:08 +0530
Subject: [PATCH v5 1/7] dt-bindings: clock: qcom-rpmhcc: Add support for
 Glymur SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-glymur-clock-controller-v5-v5-1-01b8c8681bcd@oss.qualcomm.com>
References: <20250825-glymur-clock-controller-v5-v5-0-01b8c8681bcd@oss.qualcomm.com>
In-Reply-To: <20250825-glymur-clock-controller-v5-v5-0-01b8c8681bcd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfX0VLrS2ZVE2+W
 Sju5WqCjzi3JOAKipYoffUmQiEaXpPePsRCnlb0eXWOM1HpZH2b0a5D09sd+TBP+2w3oHd49ry8
 QqLwPYnGyT1W78B057zBImIcNwxvLkwIaDPmL5nn8Xra4OxXscWXMSEw9zO60NnbK8hd8cJC7rd
 eE02lIHMmnkclZqlGpHWWy2GrFIgHdCho/OLAC0ppOuLt1RpopxOtTKWqgJCybxFe/vlziia9cp
 YhZD6QJjeephnCRu56xrs4H+6b5zs5qN4H4j567443GbFMIHgLYqGw3QoV1NuZFp/iV+vzhbZLG
 85VMHBZwXEQNB9PgJ7v5QsDH/HSUgVSFhmjlu2b1zPgoECKjZxsHGebwPuSQmeZgUmUWoAoHkLT
 5BVTdoKs
X-Proofpoint-GUID: a4_pje6wKtBXxHBDXiYJkAEyivUgaOak
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68aca934 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=VCPuoYa76ZImaTyFhsgA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: a4_pje6wKtBXxHBDXiYJkAEyivUgaOak
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_08,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034

Add bindings and update documentation compatible for RPMh clock
controller on Glymur SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index a4414ba0b287b23e69a913d10befa5d7368ff08b..78fa0572668578c17474e84250fed18b48b93b68 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,glymur-rpmh-clk
       - qcom,milos-rpmh-clk
       - qcom,qcs615-rpmh-clk
       - qcom,qdu1000-rpmh-clk

-- 
2.34.1


