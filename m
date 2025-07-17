Return-Path: <devicetree+bounces-197479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC93B097F4
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 01:32:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE9791C807BE
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 23:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D64D5286412;
	Thu, 17 Jul 2025 23:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PQXeMR7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1545E2820B6
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 23:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752794941; cv=none; b=Uulf0O1BIUzTmg1EPkWb/aOA0MX5nObEqxlOlGajk6FxSfNXYIN9qI3YuFTy3gdBJmwV1W1iITTy0xwIANSuiN6rUopVdf6cB6jV/qMjec64+F/37VWdTBHR+a7Go6fCkXjk+svnuQVOlDtKM8UrRn0JhVGjZK98TZupTrmfUgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752794941; c=relaxed/simple;
	bh=Z55FpLZ0sPNy+NgtucG5C3MNgMRSZKdtCHkkI+2faDk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K+cnZojB1fYV7Xz43BvNqJ8N1UlvokZo0DnpyPkeplpNSFjfnnNRxQV4bv+J0vyD6ggZ+W35hFFaURv6Zb9FHtoH81Q59IcRNgNuMNaE+gX+BL9nWR/UNUlDIql2TBs3Bmrq6XObPUtDGo6D8U6VkTwXmwJj4ZwT9t0pdu3Ehwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PQXeMR7S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HNSPYL028094
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 23:28:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lWApfG2mxCWAzM0ioYEsIC8m21xEZWVI0AmdT2yj6sc=; b=PQXeMR7Sl/LioOF0
	mA9oHRpo5WOdK91NCBmGERegP/Nvo4E8toy5yu1edWoEZmFvl7JWDOy+ymiQlPgO
	M0b6WiMYCKJlVrcaNeG6IdXl8E2cVIwguzWl2IEobm0n9eaeIqrO+nGok44l6lg+
	rF4thoNvKdnAgN3VcqLnBRfuufzqe4Y6/iBWbtRvBOinoF4kfPJrvNH8dX/ThAWr
	PsBYc6I3NsdzBtvNn8EEYxGPamFoiEt5ypcQxnAJaDKcHaoICsZ1kgbI/EYKpnb2
	u3MGrlYUhkUSGuzuLviGvRgZSLZkINZpEWvM6MrE+R28odo6/HH5UZQa5Zad46hH
	7UE7rg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh61q1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 23:28:58 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2365ab89b52so13535505ad.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 16:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752794937; x=1753399737;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lWApfG2mxCWAzM0ioYEsIC8m21xEZWVI0AmdT2yj6sc=;
        b=ELDWCExH5ce0UY4ZoSNZYzSQlr8opWNUOjAfyWHCrgXpnYbVcXz20JJMdydb6KP+Um
         pvUa280AqCsJFjcNu4eMplURg8pHN17TgF5cF0/1xd12CovQ6wAZoVOrFDRweP13FAgF
         AwZvHcAzaEdHn8P/+Z7ABYzUyanBuZ7oAlEg66k5ygc0SJrmo+xyMEZS3T5NN1g28u2f
         NP8KoFmquBmSspRliO6XOlO0d/OXW1Y1xcW+/ztjNCvuCWqFkSYU3fZ+6/UxE4ZGnOP1
         wMYnz3FzufedCMVTqhcL5coGIYlgRDeW5CK26BOd3VNQQC4fW1xprBv8z8rqdVjPl5xd
         05ww==
X-Forwarded-Encrypted: i=1; AJvYcCVOUAM7+w3NfQgTpfBupvPanRZ/kqIbeIzC2piyMpVI7C2B7CwQKwSINi+9HEhUqqr7fHCV2ZEoZHLl@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl6vPfYcH8JCVMJg8AtO+GhaPb6qDAX67PxvTpOH5pF+u11pwQ
	2HNsPlHzky49xHkthIXGttoo839T+gG2B34G6TMLK/GcRXMsBQnbKhBzZylXwi/q5ElBSp2EGyy
	gX3wkEl37xyHtDNOVAOn9BgkoMF8sDLmuEIQSBOsAkRSmPgtWdQT19pTM8tO/Q110
X-Gm-Gg: ASbGncv01o0tA0SBiVdgzHtZZp97GPKJ0+oo+gI9Lnbk2V1doU6MEogRXCtMmq8dZJp
	1NFiHKARXxZmltqnB+sZFzCv5UNUGncfm0gNmJSNS/lPb8FsKjuSE7errMWzZBSIWdN+TGbqx8D
	EBU5BYdCpw9tEBSAIrhBVXXG82warFtvdFWrxt26UA+C5EjxnAYEfaA7fRK2r0ee6G76aGR3R7J
	eHohe/iUee3iIi4K7gURio2UBu22dWdNA+s6h5B498Ja8pJVQ9yAqP0HYOb1aTTXV274pFknKJV
	I0IpylCprL/zSds39K3gkEWVtTwl/grcybRPH3wEmPFGdbROwI8tL8jzDzedFC7viPQOcKqyIZq
	gvukK+oV/xhON0sRnp0YfqeRX
X-Received: by 2002:a17:902:e5cf:b0:235:225d:3087 with SMTP id d9443c01a7336-23e3b80c9femr8053375ad.30.1752794937043;
        Thu, 17 Jul 2025 16:28:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhH6tJEH4IvPWPkNyHBRb0ZJ9qv+LFEoEsSd2RwQQYetT44kKI8ABmB5MC5Z+R+lVggcU3ZA==
X-Received: by 2002:a17:902:e5cf:b0:235:225d:3087 with SMTP id d9443c01a7336-23e3b80c9femr8052875ad.30.1752794936504;
        Thu, 17 Jul 2025 16:28:56 -0700 (PDT)
Received: from jesszhan-linux.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b5e3cb7sm2002195ad.17.2025.07.17.16.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 16:28:56 -0700 (PDT)
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 16:28:45 -0700
Subject: [PATCH v3 3/5] dt-bindings: display/msm: drop
 assigned-clock-parents for dp controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-dp_mst_bindings-v3-3-72ce08285703@oss.qualcomm.com>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
In-Reply-To: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Danila Tikhonov <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org,
        Rob Clark <robin.clark@oss.qualcomm.com>
Cc: Abhinav Kumar <abhinav.kumar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
X-Mailer: b4 0.15-dev-a9b2a
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752794927; l=7576;
 i=jessica.zhang@oss.qualcomm.com; s=20230329; h=from:subject:message-id;
 bh=Z7Q5MhFNW++3sg2l+MY10L8IMh9EAArq7s0Yr3E5sqQ=;
 b=bXvkMgRG/fOCiubHjM5Jn0LKe5/Q9lqISkXucJ1CRsxFEN778kZWlM3xXVklsfaaCbVIwiSFB
 ycoZ/YlAjoBCOiAORpn6mMaJdtIv28Sf0ik3WqYNt6hPeRhc20TpUZb
X-Developer-Key: i=jessica.zhang@oss.qualcomm.com; a=ed25519;
 pk=gAUCgHZ6wTJOzQa3U0GfeCDH7iZLlqIEPo4rrjfDpWE=
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=6879873a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=y-iibUknMj623qMt5boA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: E1uJZqEXAjEkDRBz1jS8psqUp3aFrLj4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDIwNiBTYWx0ZWRfXzfq9nkFHUYxs
 SKhi1k1JgJzHojNlyhLFlEC92pGXQ7GDVgtAK1bZ4j8NeICy4CICLj7urm7xENult452kX/NT0N
 c1o8MqPopfZgdpdfN163ySG0XboiEUchJoW7riLe0rkCQ5HTn2RncJAgNBR2Iyd2Y0lU78iRNXi
 faURG/qIs/uI0fk42Gy8Mju/9LU1bXPiiZ3I5NEYYWLrJQVc48d3nfc8QpnsY1HDV1ALLOF4pLO
 no2k26JoCPDC9+Jtt3G4RVzv5F2EGU9lFVvAnyOpGuBu3K+w9onXM0CakUVaiP13/T9SF+ou2Tk
 HCVdxsgcUc2TuKqih9WaJartKfd4YgLdAWRjQP/Guy/58g6ypoHVWVPHyO06dZDrHemJzBW7BCw
 TlCAV+jDBDRX/1tpHi9b5X0yJdtFBs77U++w/kA5VOiHKWat7WDwL3YHDr49/12Yf0j94rzQ
X-Proofpoint-ORIG-GUID: E1uJZqEXAjEkDRBz1jS8psqUp3aFrLj4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=961 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170206

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

Current documentation of assigned-clock-parents for dp controller does not
describe its functionality correctly making it harder to extend it for
adding multiple streams.

Instead of fixing up the documentation, drop the assigned-clock-parents
and assigned-clocks along with the usages in the chipset specific MDSS
yaml files.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml    | 15 ---------------
 .../bindings/display/msm/qcom,sa8775p-mdss.yaml           |  4 ----
 .../bindings/display/msm/qcom,sar2130p-mdss.yaml          |  5 -----
 .../devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml |  3 ---
 .../devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml |  6 ------
 .../devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml |  5 -----
 .../devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml |  5 -----
 7 files changed, 43 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 4676aa8db2f4..d8d94f62c102 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -73,16 +73,6 @@ properties:
       - const: ctrl_link_iface
       - const: stream_pixel
 
-  assigned-clocks:
-    items:
-      - description: link clock source
-      - description: pixel clock source
-
-  assigned-clock-parents:
-    items:
-      - description: phy 0 parent
-      - description: phy 1 parent
-
   phys:
     maxItems: 1
 
@@ -209,11 +199,6 @@ examples:
                       "ctrl_link",
                       "ctrl_link_iface", "stream_pixel";
 
-        assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
-                          <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
-
-        assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
-
         phys = <&dp_phy>;
         phy-names = "dp";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
index 1053b3bc4908..2dc76a074da1 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
@@ -391,10 +391,6 @@ examples:
                           "ctrl_link_iface",
                           "stream_pixel";
 
-            assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
-                              <&dispcc_mdss_dptx0_pixel0_clk_src>;
-            assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>;
-
             phys = <&mdss0_dp0_phy>;
             phy-names = "dp";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
index 870144b53cec..eef5627133db 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
@@ -214,11 +214,6 @@ examples:
                           "ctrl_link_iface",
                           "stream_pixel";
 
-            assigned-clocks = <&dispcc_disp_cc_mdss_dptx0_link_clk_src>,
-                              <&dispcc_disp_cc_mdss_dptx0_pixel0_clk_src>;
-            assigned-clock-parents = <&usb_dp_qmpphy_QMP_USB43DP_DP_LINK_CLK>,
-                                     <&usb_dp_qmpphy_QMP_USB43DP_DP_VCO_DIV_CLK>;
-
             phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
             phy-names = "dp";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
index 7a0555b15ddf..a2b71b476357 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
@@ -267,9 +267,6 @@ examples:
                      <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
             clock-names = "core_iface", "core_aux", "ctrl_link",
                           "ctrl_link_iface", "stream_pixel";
-            assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
-                              <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
-            assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
             phys = <&dp_phy>;
             phy-names = "dp";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
index 2947f27e0585..9e52ac9c0eb4 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
@@ -296,9 +296,6 @@ examples:
                           "ctrl_link",
                           "ctrl_link_iface",
                           "stream_pixel";
-            assigned-clocks = <&dispcc DISP_CC_MDSS_EDP_LINK_CLK_SRC>,
-                              <&dispcc DISP_CC_MDSS_EDP_PIXEL_CLK_SRC>;
-            assigned-clock-parents = <&mdss_edp_phy 0>, <&mdss_edp_phy 1>;
 
             phys = <&mdss_edp_phy>;
             phy-names = "dp";
@@ -387,9 +384,6 @@ examples:
                           "ctrl_link",
                           "ctrl_link_iface",
                           "stream_pixel";
-            assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
-                              <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
-            assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
             phys = <&dp_phy>;
             phy-names = "dp";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
index 13c5d5ffabde..eafea2fe1c95 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
@@ -399,11 +399,6 @@ examples:
                           "ctrl_link_iface",
                           "stream_pixel";
 
-            assigned-clocks = <&dispcc_mdss_dp_link_clk_src>,
-                              <&dispcc_mdss_dp_pixel_clk_src>;
-            assigned-clock-parents = <&dp_phy 0>,
-                                     <&dp_phy 1>;
-
             operating-points-v2 = <&dp_opp_table>;
             power-domains = <&rpmhpd RPMHPD_CX>;
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
index 72c70edc1fb0..0858dd61fb0f 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
@@ -408,11 +408,6 @@ examples:
                               "ctrl_link_iface",
                               "stream_pixel";
 
-                assigned-clocks = <&disp_cc_mdss_dptx0_link_clk_src>,
-                                  <&disp_cc_mdss_dptx0_pixel0_clk_src>;
-                assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
-                                         <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
-
                 operating-points-v2 = <&dp_opp_table>;
 
                 power-domains = <&rpmhpd RPMHPD_MMCX>;

-- 
2.50.1


