Return-Path: <devicetree+bounces-233727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8321FC2506E
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A9201A64731
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45AF934A797;
	Fri, 31 Oct 2025 12:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pwLv50Tl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dcO+CCys"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A895134A77F
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761914056; cv=none; b=aoReooMGDwHLijtt3GxAVJxbKHgPJMMFN/RZHPWQH7nXTP7wYJTxYS3FqjDSppo6UrKIaExShiWFO/Hyzh5kboxyCYYei/8GwEsqnZTcnrVVK57ui+E2fdfy2ietTHk4xCb9kofny1Q0N1Y2bVlOMpZ8Ch07vNZhYkHzVaG4Cs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761914056; c=relaxed/simple;
	bh=ISl4afa8cwdv7DeeV1ffEiyBIyGaBEuEZtsasRQTFbk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UMQFb5dUdKSwOK7F6p+5+FJISHEC6TvZW9Uh7ct0cRghKUZs3wef+GBn1f9fIsgsznAM98vovP2zHN4cgCjb22YsqYA7fHlTyODcxIqS1lQxn32g66tFOB+De/OYMPezyzDxbfjOVAgyREDalWttEs25BHk8mkbVEcVEGU5S0Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pwLv50Tl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dcO+CCys; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VA3uYW2558946
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:34:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=T+lGrQBbk9F
	oJoDoi6KpifG+D4n9fQawHOjseZxAJ1E=; b=pwLv50TlZbSGPLWU9dCvBWTned6
	66SV+yw9A8jSu3zyG7sglU1c45xfYw+GFEAlmVdhneBt7/FcvODLXCm4AVvSBDsD
	3opqUjBrhXCqHNFzN3O+J9MtpUBT+o7y+agAqbKGZU5dHgqOBnYM+xpkkRZoAAkj
	ug8tTUD59qtkrNThc4dl3jzn3comSzBWGfd45GlrXRBz6XU6YFl7U5TkQ+A1fn55
	AITzyqXtR2dX78/a/s/Rq/0kXaqXOJZIbEG9rByPOXl5/1+WmZ/Tk0xOXcQ6imSO
	xxQ8IYKGvT/HesuYXx91D+N8jp81nP6P6dnYanUdRY0ih05dznnqN7QwXPg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4u1grc1m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:34:13 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b92bdc65593so1011774a12.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761914052; x=1762518852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T+lGrQBbk9FoJoDoi6KpifG+D4n9fQawHOjseZxAJ1E=;
        b=dcO+CCys/kHtanjsO8GnfF6vpucvPd2q0ZHB1CbbL8ubBugraliWoMvaOybzR27KSp
         flOuSgE6bqDuFuhWuSe/Q8WZ2te4LLvChkxFm7q9MHKuaJd24CmU4+sWCQK1wSTxV458
         AA2q8RiVDvnvUZ/HsGiFfaGHzdDIOl6J+eF4+UbELoVKgIbaoc6MLpD0bSpY9oHuXp6S
         w4rsm4xQpbfbJfgcvWu9tOcjSkL2GEfzLeVb3ezHo/bm3hE6HYNxGSSxbtoPb4COFyPc
         mWsgKXR4GmgEdIiUZiwxPnnr2tdmIq9iE4XhwI0jOKJyROKrG7pl0ld+s9oUfwvqT/yu
         9GZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761914052; x=1762518852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T+lGrQBbk9FoJoDoi6KpifG+D4n9fQawHOjseZxAJ1E=;
        b=p/TOvtRgR18eghpVnN5S9GjdLEe5HkvSLjlY/XmIDQrgSDjKro70wUJpIr19ChkIDg
         074dkWio1UUwTGB7EC1YQ4Dsz5wRVNDJNob9wgAo6/uZleJVO0YmqUVh1KNsqnAkS3c5
         gMy30qGxPXDGZEuZW7+TbdogYdfCEJO1MdqGgMAiXm7IdzX6vo54ZGg601oD75lp97V4
         Foom95+Tb6rh5v+3zb3/fg9pYKyUL7+5XoCBfET3pjvjeOPjqsn5LTHP6f32cdud/3iu
         504q4YlbpAK0H/Gq0hBoueP+4Rd9IQ1bezPTJtRX0US2yTNNN5LbzLWKu7GXPu1bCfVS
         LQiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMiecIXCcLC0wWLjJhawZLUjeGhtWU8rXT+wShu1EjlugDodCHcLG4Ah6BXIGghpEr7lkgnPtmT4cE@vger.kernel.org
X-Gm-Message-State: AOJu0YyCtc+5+26WwImaKdfqtZINIu+9lAzHshMaWME72mCWLZA19vj7
	lUzmmrwzIACtrbx6nX8udrsGV9e6IJ0vbHYvnv4DnaGrIO1lQdxIdx8acoWNs9S+DcOJKXT0M8b
	nob7/15WEbKPY0UY3dKqiWycS+4sijxlJ4XnGjQhjoA9xCPtmrzksZrrAAj0s0MLHB2peXC5k
X-Gm-Gg: ASbGnct0IiYIl7r4mYZ1YbkualK/hqxUxtPNROrKVCu5myjgIfjiHo2kdB6Z9vo/od5
	35Lqjb5ZcoChdR2JDIP7vVCEOk5JJDIULnC1nqADl/h0JYYLZWULYhwsoC9fS4Ofsmjy/IApeF0
	vrT5josONwvAenAvFyf9vmlfDQUObku/LYPMM8Z+w0GQyKsYqkEhNmUX0sBQnpCNm6IKwpFp5rH
	XIyEVcTy65YUXmlkmp8+TRqIXQ7LGg0f6/F6etbn3Tol48+OgExslcY2uILNyP2YvketY0lT2Pb
	JkMA5LUN8OYyrEcl89t0KBxMGL27VFGYNyz0Yw5myaWwkIbF50p5xspsHKHg+mkLBBUTEf0dias
	1wXJnWOwyzUSorZOdNK35lV2e5do9UKhgBnBt
X-Received: by 2002:a05:6a20:a103:b0:2b0:ff55:f830 with SMTP id adf61e73a8af0-348cc6f56d1mr4796289637.51.1761914052474;
        Fri, 31 Oct 2025 05:34:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJVtBqEFCaBAGHv2UQNhXJlUSOeZOqqNb1s7Do3Pm1YnpfErwTizdQ+Rc5UArFox1YRzQCmQ==
X-Received: by 2002:a05:6a20:a103:b0:2b0:ff55:f830 with SMTP id adf61e73a8af0-348cc6f56d1mr4796248637.51.1761914052000;
        Fri, 31 Oct 2025 05:34:12 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d8982109sm2131277b3a.1.2025.10.31.05.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:34:11 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v10 2/3] arm64: dts: qcom: sm8750: Add USB support for SM8750 MTP platform
Date: Fri, 31 Oct 2025 18:03:53 +0530
Message-Id: <20251031123354.542074-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031123354.542074-1-krishna.kurapati@oss.qualcomm.com>
References: <20251031123354.542074-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Lo+fC3dc c=1 sm=1 tr=0 ts=6904acc5 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JjTwLu2Kam44ScBvYj0A:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: DQbHx2uaHrJy78tahziNjnWV2qfhaIPR
X-Proofpoint-GUID: DQbHx2uaHrJy78tahziNjnWV2qfhaIPR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDExMyBTYWx0ZWRfX6qfiKkG1nCqn
 BCGwNOccuZcwrj1o5wpX9PMQwV5/+znJ41p7JDLjIKl7i1Iavfaog2htSnP5DYdp5SipaWY8R0s
 t3dCDstu3s5Kvd1/SK3XQJ437oGRGD7cmHv0+cTDgRXjRpeGxeyWzakHDZ9y4/GZ8+PikmIsjqL
 Ln9lBAbbju/e59FCZscDhV5SbHt+xikXvQY9FwA77r/19PaMpYeM4Lo/WHDvy5qbe1lQopORvP5
 hncPeaDX24F4aItKEpNFIzdX4fNkOkBa9nHW46RJEdJvYbQhTwmBAgU3dQ6xIQXhFxoMeGmZ3pV
 8PUfI0iD7s0uO0Gk837jyJ1nJIwC/m7/T9Zw+aXnOtzJJu6dtrqfU7jnlbZSbjZfbZL7+ggte1P
 dWTTsuc2Lrt6Wpogd6zJQSTUHwFv2Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310113

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Enable USB support on SM8750 MTP variant. Add the PMIC glink node with
connector to enable role switch support.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
[Konrad: Provided diff to flatten USB node on MTP]
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 73 +++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 45b5f7581567..932aeee70054 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -191,6 +191,51 @@ platform {
 		};
 	};
 
+	pmic-glink {
+		compatible = "qcom,sm8750-pmic-glink",
+			     "qcom,sm8550-pmic-glink",
+			     "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&usb_dp_qmpphy_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_sbu: endpoint {
+					};
+				};
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 
@@ -1200,3 +1245,31 @@ &ufs_mem_hc {
 
 	status = "okay";
 };
+
+&usb {
+	status = "okay";
+};
+
+&usb_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_hsphy {
+	vdd-supply = <&vreg_l2d_0p88>;
+	vdda12-supply = <&vreg_l3g_1p2>;
+
+	phys = <&pmih0108_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3g_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p88>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
-- 
2.34.1


