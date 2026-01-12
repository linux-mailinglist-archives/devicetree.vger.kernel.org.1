Return-Path: <devicetree+bounces-253849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 710F3D1208C
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:52:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8EABF30C2695
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236DC34A775;
	Mon, 12 Jan 2026 10:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RLdWcpJ3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DVrVZLUT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58C8346A04
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214876; cv=none; b=W62gFrDx79PBEW82JHY24UKmcRSZFBrlMwMfmovMZwCwMSJHKCCPZclzk4iBEh8vhBC83yYr8N2TLvKyEpj9gROiWitQgjSBKR+lOmF5wpuUsCaM37Iaclcr8MrIYG/c10dq79eLcgcGTlFW8CGkFH1mlef+kAR/LhEFEj+9sFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214876; c=relaxed/simple;
	bh=85mnIBih5TefJNp/bHk7qTk7tspz31Q1DwJ4d0ufNMs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZQV4pmYiLSyL42y/AH8HHJm57+4UQtJ8mwHDMOdBlleVA6xs35UNQTuNTnh9zPDXzeIXN5STd3pJfE3rUuHKVK9toP9xxC86h38y8q+mUh9rtPxkYwtX60UrfxLRvoJa6wDac4EJX1UiIxGPoHim8G+VK1ipQWbv/GSKMJ28ZgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RLdWcpJ3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DVrVZLUT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C9F3ob1092200
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GkgK+E57psN
	HC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=; b=RLdWcpJ3iCEeozKiYqjx5kWHwQc
	xflUyZEnJpit9nTD7hpjkditFQepucjuV5k9YC6HfXV/4YEWIr7JqFCUfiUME/KW
	SgsYjHFfGy4Ila8B55EwBphdBRspZDck0q/Uyt/jRhcZgzNl1O4TgoyFb3x8Xaaj
	zE0VNu91cDo0TXyvQLLdh750yweXTB6SJ0JJuTPCqRZi+GGOTpbntYmVjyxOZysX
	XrU0sGn+346uDWoLljj/rg239uAZRFAIshF2Z8w1/rIL1CcI4p1rtC36Zy78HIzu
	t5Oh/YikwriduRXrWSHPKLGGxV6l57iOBUbMEvtu+7kLsq54EldjkE/cinA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmx5mg93v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:47:47 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81f2481ab87so1449574b3a.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768214867; x=1768819667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkgK+E57psNHC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=;
        b=DVrVZLUTszVNrxdk1L2n8eijpMSAs4C9eLUEu4xI2jRPp7tQqlCSC8CdFXp+0pniD1
         kaYOsoaRRdmiaA585n1I+oeH7ls85oYBkKykAOBCE9XQL92fgi6mmedtDwqUNrnzMit0
         er5ykOONZ7I+ozQBTLMhORbhLnWFaEwRDb4a1/0Ixcad3Kj24jgWTmvW+jaPZTHVeC36
         rgY7DD6RrVasnKztFuO3D6ZhkO7low24RxktAZIYcFIyZl7NA2DV02p6y7SybmXKhd/M
         x1dT2k0CUvoNMu28AP89MtM/CO+19aG6vYdfVsTgJHTvEp8IH8wJcVhPT6ana/kpWKhJ
         44/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214867; x=1768819667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GkgK+E57psNHC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=;
        b=Zbu1iPjmHgOvX7Bl6xnkgsLBI65cU4gw5fZg/LNs56d5X3aN5C2C0H1ZrhJiREAEgP
         WqC2bJBJ+o/fFe+kP04Ae9i+aqfDaQQKW6zSGDReSX55zBPAR5r/V4S+zpqhmHyPec1e
         o6NcHXG3KqoRyvEIgAY32PfG3KWh08z63WcB2CpICP/RLJ6aCfxEG+RjHpC0yg/6em0T
         NE3IVeug27Imc4nBdXGJemevTruABTN9o9SJpQ58IkiBmvhg9PbJw67iJezcSLT6Jppp
         7DPezctkcMOFT6Gb01ZpnOVW35jYqU0CWw6kuee1ZhjpgNfzc6AVtiBWKalKAOvvr8GM
         lHPg==
X-Forwarded-Encrypted: i=1; AJvYcCXH7uMb7M18TzmVutIrN7POjZZnmr+iOOnGYgQ6OhMHGrB8UlXbL7H7tb8cc7cEzPlI/6Dookhf/rzV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyso5+PwB1HnCQg81UHkGYuWSmBBpKPvLFuTH15TmBdY8ZjxuO0
	eBRSsczWmnqziiiCcPQegsv7rpfP+F/WOPGuUdH5vYqY24Y7USYEJRCJjyazv6ZUxeMr4AEUv/t
	48nFmmkNgHLd+Hb6Kyrz7IgBGIgCoQBcfpkPf6wjeHg8WjcgoHo5Hb8363T1gwtef
X-Gm-Gg: AY/fxX4Y7tvN8bQ5dmUNlBppL6c8foOIIvdm3ltX4YJYH6chJY+qWkU1SEbbGA2gFqW
	VeoDcpQnMH1IhT/bYKADeWMeWWdEzaXL7WeeGc3lFzPIRImlqPsMPbT7fw4nF4B7zpnFEO4aKxm
	FCciJOrSqKEJJSES9hh+zkDRusaQ7WrbaziIpKoikaI9NMZ8p/gT4q6lxoIlmcwW/8UxIreYwW4
	+8lvxH0bHH408OReV7Llgs+hgV2EkwnlTT5XDqI4GQtUOCIzTx5hL8DVgvqKGDIfxQtnpieQyx2
	1H1eotICHCHfT1etWcygIBY5YwhDmmuk9hYsTGllQyb5y+b/KV6UIpSb0FzRRcLTOunPxy5XZ99
	UGplO2JgM8iL5uRowhctYLNULXp/Yz6jn92ciEUeTPSg=
X-Received: by 2002:a05:6a00:2a0e:b0:817:9a85:54af with SMTP id d2e1a72fcca58-81b806ce675mr13419672b3a.43.1768214866488;
        Mon, 12 Jan 2026 02:47:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHUJz1BsN0xziqcwniKloQe5XJwgl782sIHwC6QTj0wp087TMrKSssCFQTMOkzmjqOon3msZw==
X-Received: by 2002:a05:6a00:2a0e:b0:817:9a85:54af with SMTP id d2e1a72fcca58-81b806ce675mr13419653b3a.43.1768214865866;
        Mon, 12 Jan 2026 02:47:45 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b8dsm17288681b3a.22.2026.01.12.02.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:47:45 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 02/12] soc: qcom: geni-se: Add geni_icc_set_bw_ab() function
Date: Mon, 12 Jan 2026 16:17:12 +0530
Message-Id: <20260112104722.591521-3-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NSBTYWx0ZWRfX6eSRuoI6d42e
 5Y/wsTzTLoNbZkLh8Zrc2Qz9zBFM/tGMc2ad0P6bAwSFjPCR7qiiiILO3ZkWiMIEggpN9RCZpBl
 uNgLD5wn74+dVGi+uw834+KOdOeFRj3V1HrUeCDU6GyUT4xkGvrfgfTdlgDXRVgrID2i1YWyHDY
 YePlsdOlvPYSkIuOfOhWowHoxWhcDZfF8InnNfRYyliBWnwilMFi05R6XG3iTNmiTafQ2tXjTt5
 WschPm73BH0uryLFmjFoEeqGG48ah4/w1RBsEfuFThi3/+DM6xnQgZz+h6RT2QavLn0uLN1EdtZ
 6eIO8PujEFETYwtXS16t7H6dfeDixj4tcK0MCwNfzrN7Vm56CINm9r/O66GI09A+3WkA9W5ldkq
 a4R6kHHSAgS0W8796ZiZnUWtrSN6ISu+Ti5VFkw7W95zGiwk/nIZ2inC/+WhjjMqTbxGq+AtmBm
 2cmxd+24DvCvMvHRH8Q==
X-Proofpoint-ORIG-GUID: DIO8AJQui6exxxUckO8zsCKTAiWp12wy
X-Proofpoint-GUID: DIO8AJQui6exxxUckO8zsCKTAiWp12wy
X-Authority-Analysis: v=2.4 cv=Q8zfIo2a c=1 sm=1 tr=0 ts=6964d153 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=BVB3BO4C9w_THQaB-9MA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120085

Add a new function geni_icc_set_bw_ab() that allows callers to set
average bandwidth values for all ICC (Interconnect) paths in a single
call. This function takes separate parameters for core, config, and DDR
average bandwidth values and applies them to the respective ICC paths.

This provides a more convenient API for drivers that need to configure
specific average bandwidth values.

Co-developed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/soc/qcom/qcom-geni-se.c  | 22 ++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index b6167b968ef6..b0542f836453 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -946,6 +946,28 @@ int geni_icc_set_bw(struct geni_se *se)
 }
 EXPORT_SYMBOL_GPL(geni_icc_set_bw);
 
+/**
+ * geni_icc_set_bw_ab() - Set average bandwidth for all ICC paths and apply
+ * @se:		Pointer to the concerned serial engine.
+ * @core_ab:	Average bandwidth in kBps for GENI_TO_CORE path.
+ * @cfg_ab:	Average bandwidth in kBps for CPU_TO_GENI path.
+ * @ddr_ab:	Average bandwidth in kBps for GENI_TO_DDR path.
+ *
+ * Sets bandwidth values for all ICC paths and applies them. DDR path is
+ * optional and only set if it exists.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+int geni_icc_set_bw_ab(struct geni_se *se, u32 core_ab, u32 cfg_ab, u32 ddr_ab)
+{
+	se->icc_paths[GENI_TO_CORE].avg_bw = core_ab;
+	se->icc_paths[CPU_TO_GENI].avg_bw = cfg_ab;
+	se->icc_paths[GENI_TO_DDR].avg_bw = ddr_ab;
+
+	return geni_icc_set_bw(se);
+}
+EXPORT_SYMBOL_GPL(geni_icc_set_bw_ab);
+
 void geni_icc_set_tag(struct geni_se *se, u32 tag)
 {
 	int i;
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index 0a984e2579fe..980aabea2157 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -528,6 +528,7 @@ void geni_se_rx_dma_unprep(struct geni_se *se, dma_addr_t iova, size_t len);
 int geni_icc_get(struct geni_se *se, const char *icc_ddr);
 
 int geni_icc_set_bw(struct geni_se *se);
+int geni_icc_set_bw_ab(struct geni_se *se, u32 core_ab, u32 cfg_ab, u32 ddr_ab);
 void geni_icc_set_tag(struct geni_se *se, u32 tag);
 
 int geni_icc_enable(struct geni_se *se);
-- 
2.34.1


