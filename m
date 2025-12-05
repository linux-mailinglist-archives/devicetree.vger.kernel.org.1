Return-Path: <devicetree+bounces-244697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7636CA7EE7
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:25:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA50830552F7
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 14:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB5E325724;
	Fri,  5 Dec 2025 14:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DiwG1Izo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gyss+qgx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A449A2DEA77
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 14:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764944624; cv=none; b=girPkI0Zp1OLwuR5Wq2sgPmJcTYFQTwuSvDmffmxEVcPNSLz0ULqnptxtSOaGMk6AmDhIeTGYbbcxC/kpIoL/Esq983oi9NWxyQrwvgl56+KdrEMLx0cg91PBTuLopLbDuNvJh/01LZsm7blcrjWTL/pIB0tiRR6Dsgu6KkeZuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764944624; c=relaxed/simple;
	bh=HIk/KB7nLSZ67Hc+uZ1kAhWwUj5oy+XlAWup05FysFM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=F/IS3Si6nKuMIhoF3HeZ/IQvyRZ+jS6Sdnea7OzVqz76ZLHA/sNmsP/QKJz3yfnQ8wleclHtR9u5F5+WosNkB8PXaKvyMiyimucpSYEcHpsLwPu9LQltLNG8uKtdRmFX5mpxsca1LzybKHipti1enWZVuiz8F+8pqeeEfeLBbXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DiwG1Izo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gyss+qgx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58MjoI2516892
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 14:23:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=oEukkwwY+sPzhwpR1r18+v
	TwNNSbGVXYm3tbNoZD61M=; b=DiwG1IzoAYPTybxIn8zBkHYl9VuyFgXc4a85AQ
	+Lb7WxdTfIMfk/ouk0pIamlOVouBHy43bKNGQqHN/VD+s2cYKe2xxurnW5ojoSj+
	wthMLeeFZQ9qVRO+M+f3W7r2RGWHSug8i5TcQSKl39TZF+3Qpe3lx6yW01bjdlfg
	b/qJfBV4CKABMz1QMmMp7ZpepxIaIQeqCfUAGmvySIq8rS51lMG/EOvsx2BZawus
	3/K8gGIXR6h5fgJJI0aQ0CrjjqZ9nZVpZm0fhPlTXSrWREIoRNonsHBQEsfkgq9u
	IEHKy3ar6b/abvkUKYUrXqkoNDM4tquI2unmKtHWI/Un/gTg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auj7n2e6t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 14:23:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b29b4864b7so483558485a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 06:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944619; x=1765549419; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oEukkwwY+sPzhwpR1r18+vTwNNSbGVXYm3tbNoZD61M=;
        b=Gyss+qgxYWYgtmWtiQaIzmDL+iwdci/tmj57RKsTEu3VWmqoSLQiq6+4S5wPuljnMe
         Sj9sLtxnTrqjlD7L7+jPeAvCpb7pyuBjDmohVw5ZVI5SQLDj9oGSTmW6SuioKcp+ZJCG
         4Qu7P1WWgz8yBBxL4yDWFzt9Yy4YMQaN+J0pmh7UFn2279YhpCPuMg+z33Tj3bDbfbLr
         08MObz2LzUpLcYXxm71o3XkFZ3A1aME7l4XOTLVLP6IDAeNHMI8wsrXsD5caJbpVh8ri
         Sxfc3j5GmOUHTWbv30eJrB8KyQkMgDVLG8lesgUwXmvd2v6y7BU4VMCiFu7EHAX7FVCZ
         RS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944619; x=1765549419;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oEukkwwY+sPzhwpR1r18+vTwNNSbGVXYm3tbNoZD61M=;
        b=CXm/VUNAPBOwTZJJXc51ctZgvd14R2yuQYz7GfPSIluYKEEn04Ca7rhifNWgVEh8hU
         G4HDJI2PqAIOnnTGwxRg0XApyIWYrVTp6EX30ePYCGVn9OIO7rtHz6rlZaOgpPiYdq1w
         5EsNnVdIesoR3JthAHR0tyZ4hQ93EA5FAHSBJ9+WgvOJU1cxcZgAdvKbzmKCH931LFEW
         JmlT4zI9OcWp0sdKjkf8SHsZc73QOISO2rUraCnNowCNH1xUbTWxp9Ccq744MC6aJZDM
         oBeRywNejyOISyw+MZ1CA45a3aels9SV1y+3XUetvEA9NamSPPhAQyUttsXLnAd6nqj7
         HzCA==
X-Forwarded-Encrypted: i=1; AJvYcCU4wDYu2O4HDLigoO/ErwSnKrCbzN4gqougT1o60KHM7/k77iMZhnCsLSXHW2zCBFRzl/kw0VAnR6Am@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi7GF6iijvJwFZvSlDxKwbOLdaWjPqg1wOtbrQx6OH/JdsTUwh
	OjCyCurAo+/NpI6gLOfS6mzix2f2AtaqICY7TRghO/GdoSkppUjxS6fxTEY5vVZwEHNk+4Rtd6u
	YXL87u/CtLHUnRQ32Oev+8VKRN3W5mVmxBXJxt3fVdyX2T6qo2U116awVkIWmlpWx
X-Gm-Gg: ASbGncs6HF5nU9oCNHusjCROcJ7KH8Vp4XBPuNOWwHaE3V9PQlmjyIBVFV3IE1FGYSj
	1t+SOzAzq3l4ieSgdjo22ZHFXVwS7t4kpYhduRNTGeQZpVNKIr5DjZ6LqenVdIaibYE8imSD5Nz
	Sgij+xZ32TirBatPpqKFJ/nOC+8GrWQ9za3GTbj6JKIv2zgR2LegaFinXCEZXrJAtPBux/OHkTW
	dUy8v2wwOVPvWVHHh47kxPghy87aB9gJdanrlyyC+tmoekX+GcyEMSDzjyjYfUdEd30a5YnHNIS
	7JW9s+TyTLsD79yITi3xVB7PS03JQUsaP2sUEezNM2c/JpalP4IhDuy4HBknUPafnC7A2h4dzZq
	RrufFpbnkM4N4XlA=
X-Received: by 2002:a05:620a:4011:b0:89e:67a9:fcf1 with SMTP id af79cd13be357-8b6181bd1c4mr1040586385a.52.1764944619407;
        Fri, 05 Dec 2025 06:23:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFVa+U1mTdpcgI8QkL3RnJCxnH/pWmhJ6I18QpfvqO4iNM7TfSzxDliw2+7U+Ic/VqUZoKQ2w==
X-Received: by 2002:a05:620a:4011:b0:89e:67a9:fcf1 with SMTP id af79cd13be357-8b6181bd1c4mr1040578285a.52.1764944618811;
        Fri, 05 Dec 2025 06:23:38 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:38 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v5 0/4] phy: qcom: edp: Add support for Glymur platform
Date: Fri, 05 Dec 2025 16:23:19 +0200
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANfqMmkC/43NQW7DIBCF4atErDsVw0DAWfUeURbYEBspMRQSq
 1bku5dEapUqC3f5j0bfu7Hic/CF7TY3lv0USohjDfW2Yd1gx95DcLWZ4ELxhhOkYYbPLp7BuwT
 WOehP8/maoVxTivkCwhpE7RrRmoZVJWV/DF+Phf2h9hDKJeb5MTjh/fpjy1V7QuDgDXXbtrEoV
 ftxCqPN8T3mnt3xSTyDzTooKlifFZFBL7V7AekJRFwHqYLYGYWSkCxuX0D5CyJH+T9QaC0MaU7
 CH/+Ay7J8A14qAy/CAQAA
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2314;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=HIk/KB7nLSZ67Hc+uZ1kAhWwUj5oy+XlAWup05FysFM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurjVC2bDux3j6at5WKl2SSFj5zjBz/ae0/M7
 Ju2myWAm6SJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq4wAKCRAbX0TJAJUV
 VoOnD/9JldZMLUHF/fKB0gpavxsnwy0g+dBkVsathEKAwbB7ah8WLQSQjLtjdzbfXoB75+igvdL
 QO3oUwwf4TYfwB5RpZ5AcIEF6LptK3wJGv2pcKYPKoqG+w5lZzq930gPA041lZjsKFeG0cx+6TT
 PIMQL3kqbskKI4UUNKyVVZSkHe/yAEVeCXd1Zo/ZKV4o97zdeVs/Pf/Jf8HYuh8aQqzV9UPmcb0
 0wXA57O6it5LGQpQhddp3qaOn1UpvaL2QmWNG7KBWSWXb4fbBncZsE8SoMKECGZLSE7m3rKGeDr
 Su/v+PeD9oY0X3K4qyd87gt7SVC6o1aAIbWvNwz5grPJ/n8K4YV0Cjk0MnOksnigc8p3w1V/MhB
 S5JeheullEBQKgAYpz+yP4/foNjwcbdlgW3522xQSr4xRpVVyZ8vu70mXdhty0+2IhUTFz0Ri9q
 KM48S7WBQTaTZenjy5vDz20Y+fojt0n1rfFEIbPpB8E8jZPw6xeR45AhXjuU5vUEC8B8EzeYTm/
 WiP3KW9BBMbo79QQcxd7DiXrenBuHvGZs7e5HROoQkHNh9OppELit0H8vAhv9Qaa9pqT6XFh8u/
 bPWXRPRis7j2mb7CbpBzRe3A/sSUN7SwaSaJQngdcKdXi0bsOZDdHjI48py/KdlkkEeQYkYc6l9
 VlPpIfkJyQ5U/Tw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=DOSCIiNb c=1 sm=1 tr=0 ts=6932eaec cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=rv5esH4l-LSXXVRZdzkA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ifNc_YJ6Rss_JBFHRVlEfvy5lZjtMTGH
X-Proofpoint-GUID: ifNc_YJ6Rss_JBFHRVlEfvy5lZjtMTGH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfX1XD0ddS+P0pj
 ROfXY3keExF6Sr1rMGEOL1wf3/NLvo9g7r+7v5FEQP7xy4aZFxbqwt5Ki3PDshljFzN/DhnKz8l
 yUIV613xOCCpnX26RRge7ZLbEBj+DpFPLDyDBINDn46xhgJ+4q9XDIZQowZ8+lF6H6Hrlt7+pUY
 EoF2Hg1r2ArbMd7dkn4gXy5wlmaa3hzgVvQlS878upBiRNOiBaHECJuQc0ePcE2pCUniYZp/ZPN
 7d7l6vhdy1srrSNuy0XLAyK0Q97btDtDqX4z8A0tkVlBLgKyTQ7w+/40Qo5BNAymlVrjKPd9KQo
 UPuEPdx7O18gIor1VCsIoNeXtiC8cfzswVyXBHJnWeV5xLzdhwB8P+j1NOsnVDK3VpNVakqJUyy
 LzYbi32Sk0X7QqEU0JUam92gI3auhQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050103

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v5:
- Renamed phy-qcom-qmp-dp-qserdes-com-v8.h to phy-qcom-qmp-qserdes-dp-com-v8.h,
  as Dmitry suggested, and addapted the include guard.
- Added my Qualcomm OSS signed-off-by tag.
- Link to v4: https://lore.kernel.org/r/20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org

Changes in v4:
- Force fallthrough for 5400 and 8100 link rates in qcom_edp_com_configure_pll_v8,
  as they use the same values.
- Picked up Rob's and Konrad's R-b tags.
- Link to v3: https://lore.kernel.org/r/20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org

Changes in v3:
- Split the DP_AUX_CFG_SIZE change into as separate patch, as per
  Konrad's request.
- Re-worded the dt-bindings commit, as per Krzysztof's request.
- Link to v2: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org

Changes in v2:
- Sorted alphabetically the both the compatible and v8 specific
  configuration.
- Prefixed the new offsets with DP in order differentiate from PCIe ones
- Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org

---
Abel Vesa (4):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
      phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 232 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  |  52 +++++
 3 files changed, 279 insertions(+), 7 deletions(-)
---
base-commit: 801584822345ed46c0443c1a66ead9173a47c723
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


