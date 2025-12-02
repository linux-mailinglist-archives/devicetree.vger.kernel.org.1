Return-Path: <devicetree+bounces-243611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A95FFC9A9E0
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 09:11:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A865F3A5059
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 08:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F30306D20;
	Tue,  2 Dec 2025 08:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fF7XxUC4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y3kVpp3U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FD4306B18
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 08:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764663039; cv=none; b=gnBnutMBchmI02cUayHq7rFYgC9dR/jwbHaiEdtPnc+5B6rqR2wG18PVvt0NVSL1vnejU/53i9y1XfELtVPtUzIUPAkPD4LDo+0N0j8VkoMkIw5SUxSSr4DwNUf9jkhcdSn36W17pYZeBchRMwwN1gExlbvErG9FiAvqS6FlPAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764663039; c=relaxed/simple;
	bh=afkrlJcGzXfiyxwW4hhRJzVZEArw0rOKDLWwDZq0lLY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CG6jc3W3ttZJQl4Ei5MVLH+aG/8ulUg3MjRVpCe5AlP/eQ7KxNCzy/+tWuizk5jm3c7KqFd9hp39OzKLJveaUtmLOppwQNYvOpoeP1+FW9baro0VhhtegnX23tLW9c/4+zPY6pZB4+FZYrZJKYXkz1Il/HayJp3z1DIcH1fZUcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fF7XxUC4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y3kVpp3U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B236Buk2418643
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 08:10:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jgAVu5YMA5u
	VQJOZAGCxsP4u2zBciF10Dqry9moop+w=; b=fF7XxUC4ev8NtHZbRXi9e9XkA9x
	vzICf9wlYnKVTKj+5zpjcyStmeo5YUT4e9IKyRWBFYTVhCytwYRj0YLcU18WjD3S
	3T3xMl0di2X2tvwhTQMaCA6UBwOyaDqPB5khKQoJn0njmYyYAg7CEymhs33qPyny
	VHECzFqvIuaiQiCEi7wuqgy9oPIXnlBzqZUEXCOhBkT/kicK7DrZwyql7eloLjtF
	b7z/sHr/7GCFPQuMc0GGT3EsKaxglNhm/GwdBq0VE9Ja9hqHz7WAOH8vfkefpiLl
	gvhNC5zhIhW51Xh5sA7GPtAWTnO+AoA0FK1W48uukqVL89Epa+SuZupLtIA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asqwr0tyf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 08:10:37 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3413ea2c342so1394593a91.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 00:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764663036; x=1765267836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jgAVu5YMA5uVQJOZAGCxsP4u2zBciF10Dqry9moop+w=;
        b=Y3kVpp3UTxbzcbUJ2dGVydzeklsQ/wnJzsNGA/4wRZgsAwCHBbQwLRHHI5sd/DJv66
         WnEcLRzztVXvYLvAdgB0WiboHLDJjW0y9NSBCL6eu33RT7U7JBMkR6a9KuSOX07ZZ+6q
         PshIsGvCzMi6ZFJDie6LzjIJN/JB7nkwTZJSXMyVWzRHcvMVDuRVNqpfL676I4dCOFSf
         VSFSTa3rQcEFHqacxVuPVgK0U0TVF6RutV1e/1SFQL/W1im8HdhX01wZlHXfRWZoqJL1
         5fYmYRAoaNDVM+H91px0Fn8wYtJBp4/A/FxHY90rvghURSXoEQExv/jXy/odTESvUiFC
         VPhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764663036; x=1765267836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jgAVu5YMA5uVQJOZAGCxsP4u2zBciF10Dqry9moop+w=;
        b=OF7qg+FZyTtq5eptoRTP4WZqc5IXvJg55ilvWi8VmlYMnPVSrv5zx9zVL3d+IpeEu1
         zco+BMcH2rjF2E4mnut1DGspqt3k2UIadtLit2gOzzfO5br1bmiEb6hUTm6CkjwO5bsW
         zcEspt23ka2zEvAyiHmXVexWe+Hql4ZecXYTBW+dMuK+trt06owgflIsZwsESaam6w2e
         OR+86iz+q5IuQVSGELao+tulJIHy/i99WeZng3uJFkFmYppK6mpHy/1OPPW1RacrF+ph
         Sm7+/E8ewE1fyzsZsq0T0RAuw+z3HdTT1eL5YSvTWgJ4GfUTS8/eeO2Wmfpn9rHM8WHj
         3MqA==
X-Forwarded-Encrypted: i=1; AJvYcCWkWteg6YGHY0csfqmp7IcLIt3MVfWRJQrKt1pUu2zNYXaXfowTEN9e6EzrJas6Rij1YC7lRVZhzDLI@vger.kernel.org
X-Gm-Message-State: AOJu0YxhtDO5n2Fi41AEzd7X4Kz1eVUVPYkY1wjQSt1Tsxr8fJA/9rjw
	OAJylR3z5NIZcGF2vaC5IMN954W9Dj9UFnuxm1mlxOO0c4B/6pNydPMVc6w0WB1dDQO0XyODDqS
	/dLn1nlkOGa4MJbPTquZTYFlHQefDT9vB5Lv++nNxcYcfTrLE1XDHiSlcTcTOAeM=
X-Gm-Gg: ASbGncsG/vuYG4VV3Zy0ffyBsbFPPAqjMgTScLbcmIHspAkktKAPqMYdNmanofZUgFe
	3G2KNeDiVcEQ0/Z4uuScOmtaGZpN1wuDbJfX6Jg4bv5kaExvIXdBYSvgEZefzGMkc3sCOLTTwaC
	wRqdNwYbHPyiN6EO37x2mA2djHUATx3M5uxzPmlnqU4O8VMjfILLUj6eu9s3VuhJIg5Bv3xG1is
	SQXZaCDyJZH1dFTMODVOzT6Lsbr+W9WxS2RxjgBz2Ers9jQrrCb2J4hleiFXi+0RzW1lCjX4R5p
	mtTnQEHZcnTZC6Kh65t8NU1Ysxf5fqwraitfFv9F0e00ZPOVp8gt8sDzQcbuULQ/UT6H0BOaM7z
	UdZxjPmOzWKO3/piSoSH7I+I1bBC2iNHyJK2PNZmG
X-Received: by 2002:a17:90b:4a4b:b0:341:88c1:6a89 with SMTP id 98e67ed59e1d1-34736a9777emr24433038a91.2.1764663036162;
        Tue, 02 Dec 2025 00:10:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH6zLFtvtE3AkrvsjEx6z4cOWCIHVwS07V58gcp8Esk16EZwouo3Kw04pzXhol4BqzyiVU3Yg==
X-Received: by 2002:a17:90b:4a4b:b0:341:88c1:6a89 with SMTP id 98e67ed59e1d1-34736a9777emr24433024a91.2.1764663035629;
        Tue, 02 Dec 2025 00:10:35 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3477b1cbdc0sm15419794a91.2.2025.12.02.00.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 00:10:35 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V6 2/3] arm64: dts: qcom: sm8750-mtp: Add SDC2 node for sm8750 mtp board
Date: Tue,  2 Dec 2025 13:40:16 +0530
Message-Id: <20251202081017.2234677-3-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251202081017.2234677-1-sarthak.garg@oss.qualcomm.com>
References: <20251202081017.2234677-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: JOCtifJUX3V8o-lggJ2qmJfpwVmxmkIB
X-Authority-Analysis: v=2.4 cv=H83WAuYi c=1 sm=1 tr=0 ts=692e9efd cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=kg-vC1Fqsk3HpgLVStQA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: JOCtifJUX3V8o-lggJ2qmJfpwVmxmkIB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA2NCBTYWx0ZWRfXxnPfaIL58F2R
 qyPFZhhEGxlRua002E1D1I+rhdUN6N4jT6aqfOZjHCMoJ2SBTKyEU0A5MJ8VoIGhzaT2LZvNQps
 ivfwSrnKM6K3vxR3AaNKK+Zsb893iUxbHTVkX14ZMkG7L84v4HQb55jXc58fJsutSLqvSKwM/PU
 t7KyEYBacYkkme9nwuFmCEuI/dncsrQOBwcjH9a28dE1Z62nrcVOnFV2yFEbn5UqxFYBMcgFWef
 N59+F8SYpgNLiZP0wSjuR52Nka8E+h9+SEsgBhoW0yaemNFBVcHmklLhMyZ6RS5a+BViW7cy3zx
 xgiGr3vSbEqdHUY4QumA3mHsIO7TWaR+FNXnLqlR/7V3rGyoXkJ6EHfx9vxg7KnA7l63sgUos7L
 3tOs3u3DaAZDLIyGDXzh/jCqTAj0fw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0 clxscore=1015
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512020064

Enable SD Card host controller for sm8750 mtp board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c8cb521b4c26..bfde752f6365 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1075,6 +1075,22 @@ &remoteproc_mpss {
 	status = "fail";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l8b_1p8>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
 &swr0 {
 	status = "okay";
 
@@ -1194,6 +1210,13 @@ sw-ctrl-pins {
 		};
 	};
 
+	sdc2_card_det_n: sd-card-det-n-state {
+		pins = "gpio55";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	wcd_default: wcd-reset-n-active-state {
 		pins = "gpio101";
 		function = "gpio";
-- 
2.34.1


