Return-Path: <devicetree+bounces-254602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBC9D19BBA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1FDB30312E7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F8D2D9ECA;
	Tue, 13 Jan 2026 15:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KhcAoiv5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eZU9Jxc/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BBAF2DAFB9
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316805; cv=none; b=ihZhBGgjSwtuluTwTUYRjOZdft490tQOOEUhaKv6ig4WDnWUorhXCxiRAewNNyp3gcWkrpqzncbodTjK9boBEDA8chUr4V72YrYT6miwnCAiQf3jS08rWNrkdsYhTvXC9IlwDHqckdzeuQbYHNLoTTFlY7aACQsEf1Gunp8VDb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316805; c=relaxed/simple;
	bh=fdkTTxCws1SqGGcVirwfUeWaU334oFlvfpm9ey2HxFA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G/KAWf2LuzuIXot/CI7UPG5UTb1PBAvpHYwBmGvBUPrl/vgaea8hW5gEJI+LnRhPZV8R+fs2AbBy439LNLrZ0oB7zvLLS+/SzYxw7F3jJ/1QX+9VLhimAidD7hUcAVivVYOuHpdK83G0DavlddeB5quZaZ3Wiq2c11BoKJdavEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KhcAoiv5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eZU9Jxc/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DA5jkC3798441
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:06:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VL8203OSWMIWC7qbAzaBVg6fNhPChNvwFjAEK5Qi8us=; b=KhcAoiv5Mx/3ar6N
	q7R0niWaaFjUSPHxE34rXqpPXOcUNvehMYF4cqAWF9HPR2MYpaB7SvuYQvR3cUBk
	g9VJlaTG2I0CE6a+ieih0CA9SLCGi2EHDMuatXl5xRbp0kHlX+J7zaU/4JDRiFmk
	HdvHsFPkEVwYBUMbiUMsb2pTl82yF0g+5CuV/uGGyvXM356ySti7Gv1BgHwn/nuu
	5rCnoCCflDMg1NgMjsekPa1fWdbn3ac19jMlBPsj85EpgnDHRO9/HYgOeze4MNN6
	sfADc9lDdGHRAceh2WrROhJSW6GRZcg8WRj4GCKdunZ9YVHXzhVXwVFo/3gjcHbC
	ywgVag==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnm0drwk4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:06:43 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b47ce772e4so255862eec.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768316802; x=1768921602; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VL8203OSWMIWC7qbAzaBVg6fNhPChNvwFjAEK5Qi8us=;
        b=eZU9Jxc/ypsNtu30rz64asHOC5rWrEKm+rchQ8N8QXlaI8efGjaN8T16AIqmQOB08g
         ahDHjTopq2eoaf1ztvghq2Hk7wWDuhHjEh2ie3tAXqHCIDMkvwjxTBFh4QNxGXwDLvKK
         5+//ANEJpv0zFvwU/35K1870LjFw5QPZevGAYzRy2Rwzw/Qk7lkfdxbLKU/+YxQcv3ZA
         +l2tUBri/ThNxcUXGKVTkmtvMCQbRP9TkkKBoWTrKcNa3Ud71L5zznebi0hOVd5MT88a
         b1fdl021XYdJ0HbYh3JvbBd4K2bOZ40uUrBmEyaubKUGn6TvMOU9AvmInJG/FSY5SWFa
         PJ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768316802; x=1768921602;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VL8203OSWMIWC7qbAzaBVg6fNhPChNvwFjAEK5Qi8us=;
        b=icghxQD689/QRpyXmwnyU1j30CYgxsPRy2c0UB7F9lbfKo8DsDg8CLaHGoTUzg90qh
         spbnvoiLnt80qj6dVHuCZqsm2Ifg5/WA10CormDCvauo7l2beLVe67INNkiwO74AwLzM
         cgMsCW9HuS4b//tVqjspjbIKJDQDuR31OY02fymWXi6quwdqwnshek42wfwrMtB1SQkF
         XmYgz6/JEVHnShKrco8B2FDKvDdFjHDvWGbJt4c3lI2pJnJcIavy6fFyAdYJqCt77uEn
         XLBifcJwfPtbIKfaMeeqYFrzEBfh5uZ2/XHvCpbsZoWzevEEZIH9JdHprn2aDzSQJWv9
         jsXw==
X-Forwarded-Encrypted: i=1; AJvYcCU8iwfWpUW5JgIC1ACRjDwzzMRVGdW1iWEynqNztVWgCGOrJvUx/BcBqKkwbOHil0/7ABjvTtYbRY5V@vger.kernel.org
X-Gm-Message-State: AOJu0YyQFAaza2w/U+Vfa9pVgbYXhjBxbukPWIiKOYmudkw3T7X3VDQH
	njvAt/2yA4p2CaZqATdWPs+GsKvHtUuH590wguPKbig+C80yEEQ9uD8lGYRi2fU/HW5QSrDoMcd
	FqGPUp2La2GPyRh9sM+FE4RT2IddSdu83r0nrxZleYxVJh77qLRVImpQXIgu2rnw5s7lQMYFK
X-Gm-Gg: AY/fxX4rcp7+VEz3iRpdwSPkGzhPeqDGitP9EukcMYjFP019p4Q/bMS+2hopT7X9bw9
	UAMVaOoGhMFxT5o4Fd+OnZVmJ18TfGcPb6iKwzLrb+GWkjhTr2MxOvCSxLmJrJjdCo4d234KmCF
	YxRhDj0/KwsvKazJuDBiOiggJ9DNy6KxzFpVi8RLyaBzo51RkgqmdeTRgXAD1aDkPo/HYstWZPN
	/gMXfJDVvc3NUmbUXK7ZVo3xIOrdMBelDYEt2RdGQdnXzP7UuUW7O4YPC7QSEsl1NUM960/hh5i
	uw8kQ3+1xNkOlBhbxDP+/Z9ZBwsmVeq8nvbDLW13IA8oydPbGFVog4OmgSCQIaqh+Iyjl7/rGZ6
	7ZTmfgf1jjhVAxL4mbw==
X-Received: by 2002:a05:7301:710e:b0:2b0:4c6c:9fef with SMTP id 5a478bee46e88-2b17d2e33c5mr14961273eec.38.1768316802120;
        Tue, 13 Jan 2026 07:06:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRMngKrwWXxfZQenbgG+jZOfYX4PQq+MbHe1dkRFN6rn4r5gCBIjJXTA12hBCCBOtAVLcBLw==
X-Received: by 2002:a05:620a:7104:b0:8b2:dabe:de27 with SMTP id af79cd13be357-8c389408d4emr2878494685a.85.1768316418378;
        Tue, 13 Jan 2026 07:00:18 -0800 (PST)
Received: from hackbox.lan ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4d3831sm2317392366b.44.2026.01.13.07.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:00:17 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 17:00:06 +0200
Subject: [PATCH RFT v2 2/2] arm64: dts: qcom: glymur-crd: Enable eDP
 display support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-dts-qcom-glymur-crd-add-edp-v2-2-8026af65ecbb@oss.qualcomm.com>
References: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
In-Reply-To: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2549;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=bzXRipEb88917TVh5cJVP1PkKOLSRPzc1VoESDiOxCo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpZl37RsUY+OPC86gMyVKcuBmsj33N2kcGFdigE
 hOeK9I9pRqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaWZd+wAKCRAbX0TJAJUV
 VhJjD/9f7ccH6BGXOnp/jGDof0c26ms4EXt/3RLK1qUTdd54fQbxYCE7JJESmujXiVnfC5Y5JmP
 03CjSxv/m2tPShOJZZtxbCHQPnBtVz3eRGxSyuYiEzFdBbelcEk06ReknIB+RT+GvVd4NCWA4U+
 R9FuJKQov3Qx/eBMM5VjJpJYokhjKdWVcYU2X7RIjNVlMSHqFhc4T6GUUskm6BS08H/F6LXsxqN
 WH9GPH80YczONPJYSdN49VVvKfXBdRWUubwz9Nsdc+N6YptcNlwTEw8PCxjbJXzP0L98+g+V4Wo
 b35LMUsVcBQBm23Ebjp2Py672FTORkMGvDlW8dx9rHxa/FxNqdxqQkPQtmOCTx56mLXQPr9LnQA
 AMVuT8ePHKAXK69e4kiMFrhqHCi4kye6BFW7N0bA4s9SYWDK7LrtiVUm4ZyZxpiZcW1PMnWBrFU
 o864aXaKxXrKteIgvQjPRjUDJdpINYP3Z4PG79jxCZZrAZp4oJYpDiu+IV2jIRMMEQiak5seu6F
 B6H5lGB6Lwj9RtMPWvBX7uUBYB9z9/Jz3cdgum1u6gpC8vmYTUGBSiTDV4RQmYZSiKz7p21xa2v
 FwF9oJDl7qdt/U1IKBurm/FuOG/S/phomS4aT0gqQ2EcXGaajBrZVsMAKdvYqCoJjfKdgsfPzY/
 rrXmap0B8Y/MqfA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=BYXVE7t2 c=1 sm=1 tr=0 ts=69665f83 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=68_4jy3stEaJOreQ4WQA:9 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: f4CDGLoMI25mZCTX6rxjUD_uQeZzNQW6
X-Proofpoint-GUID: f4CDGLoMI25mZCTX6rxjUD_uQeZzNQW6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyNyBTYWx0ZWRfXx66stkqvqKf1
 6fhrB8cL7fUe+EvX76xec4At5M2OGNfLSF3up28Eyg8Cwnlci87sm943tZd+OpDBoGzprK8E2CQ
 eeINjy7JcOPTOl7SxUjNtBGlAUmUjcbyTKSmCGnUG8qQOqirzJ/GEus+N+1yyBHAjm4JD/xzhWc
 SZnyaS1PC7z+81h6YG5DhnaYDxxDPqmj9HSNQI+ScfhJuQK+fi6JBFgwiEbSDZOP4sH53nl5l8H
 ZVpcTWWgfTVHGNJQJpWUb04hP5Iezwt/n0vZtotlR09EiYKEi94yMfblKVFAs7KRV7cABksZ5uj
 7n45Qo2F1IwFVaCc1s6qbzjgqeQ7DTa2o1FB+7Wr/JLmsA6d5JACZPbJ3R8ecOj/IpjRmSEPT/4
 x7vUibxukMiMN+ZkKcOfBdSFEJYHl6+kNV2obql0hziI+glR6tMVb9S1FRuyZCEMPV9DVyVvhn3
 51EzGEbS+Y+m0cyzRnQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130127

From: Abel Vesa <abel.vesa@linaro.org>

Enable the MDSS (Mobile Display SubSystem) along with the 3rd
DisplayPort controller and its PHY in order to bring support
for the panel on Glymur CRD platform. Also describe the voltage
regulator needed by the eDP panel.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 71 +++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 3188bfa27bea..db8307f06bac 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -147,6 +147,22 @@ pmic_glink_ss_in2: endpoint {
 		};
 	};
 
+	vreg_edp_3p3: regulator-edp-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_EDP_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 70 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&edp_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -493,6 +509,20 @@ &tlmm {
 			       <10 2>, /* OOB UART */
 			       <44 4>; /* Security SPI (TPM) */
 
+	edp_bl_en: edp-bl-en-state {
+		pins = "gpio18";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
+	edp_reg_en: edp-reg-en-state {
+		pins = "gpio70";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";
@@ -900,6 +930,47 @@ &gpi_dma2 {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp3 {
+	/delete-property/ #sound-dai-cells;
+
+	status = "okay";
+
+	aux-bus {
+		panel {
+			compatible = "samsung,atna60cl08", "samsung,atna33xc20";
+			enable-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;
+			power-supply = <&vreg_edp_3p3>;
+
+			pinctrl-0 = <&edp_bl_en>;
+			pinctrl-names = "default";
+
+			port {
+				edp_panel_in: endpoint {
+					remote-endpoint = <&mdss_dp3_out>;
+				};
+			};
+		};
+	};
+};
+
+&mdss_dp3_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+
+	remote-endpoint = <&edp_panel_in>;
+};
+
+&mdss_dp3_phy {
+	vdda-phy-supply = <&vreg_l2f_e1_0p83>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};
+
 &pmk8850_rtc {
 	qcom,no-alarm;
 };

-- 
2.48.1


