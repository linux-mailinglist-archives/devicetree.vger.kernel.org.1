Return-Path: <devicetree+bounces-265769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE/eLRYjk2kX1wEAu9opvQ
	(envelope-from <devicetree+bounces-265769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:00:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D108C1445B7
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:00:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 229E0300680B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3425313E0A;
	Mon, 16 Feb 2026 13:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B9woD6cE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RA0F5tHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C91313549
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771249412; cv=none; b=ISOrbUPtcVtOA+615guiNhRx088R7egF5Q1yfdfsIw/onZSw3yn+fAbRaFkSzKkG8fIpSwDR4JKbHiznW4/9PJrk93sIK21UN0Jf33pfTlXLwuruI8rbkk0jEKlFJ66uLMdRcpVSjmpFXi5/yFE8xS1Q0p1hD9ZDP3jshQWa73I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771249412; c=relaxed/simple;
	bh=/8RhR7OV6oXxghCBO+QdQd4Etv2A/gx8ZJlBU0UKrQ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D82V0kkIe8zlzzpuBp2eRYB2MlJ2DZjYyGDUeOxlhngpU5WzblmspgsbOnYfxuij3VZKJgfwYX44JWJLGNG7+Shzc68nmn+ogtQy0Mhjc+MAOyij6ZBIp4CGg9Xs2TY2DWvqZ9Z4nPqSvYz5ch0VBzF9QtkTswhQWlF6obl+syE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B9woD6cE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RA0F5tHW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G9fHnW1476507
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6rdTp+xDJxOCtPl8bGoK3viPV3DndufBZd+L3532s2I=; b=B9woD6cEAZ2KTJeL
	e9jY47a6/MY+R1UwDTNonB6BSOlnssvO6Gd6ZJZ90Me4alAeH8ixHgvFeOXCntdY
	cDY/GDKIHElMQPpcMSf1bcBKHEre0KsXzF6gkqAvltFKSnxOSMhBJmfRghZZQo+h
	KxVuWwVX5MhYfQeo01oXHioNQMkf5oJf0xcnNQaSwso9pR65tZoV95/Wppv0VQFS
	SCv9BgOChiwJF8fr9DB4e6UXmY/mIbIVNZ7kwu7w970keKsSQll3/927849wyPF1
	7rQwnpZfaCGgIJYId5nySoPCkmZiIxF5vFKz6nVCrywYODGDwGhSjVKqqcuGKEzp
	lV7hfQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4caerc4y5y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-506bf83258bso167906211cf.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 05:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771249409; x=1771854209; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6rdTp+xDJxOCtPl8bGoK3viPV3DndufBZd+L3532s2I=;
        b=RA0F5tHW5fa5SmBYdSNhauUZLAhsnWnHflPxBmpU+P6feoQ6OaOmLZxyq5TI4iMydf
         Cg8JrFZ98LFS91bmnFq+HB52BwPX5/4T4pwdljjHeekoKGe2U3uyUki36zZKdtucvJMb
         YpK5kxW+ZQFU0Acd5B2KRLDaZDRlqgcSoURLqrUh1XFrxE6ugnqFuE6WHk1ywvmAi4Dx
         DLhl31TbY8Qf41JYg2s/MvWcBnbazptsbAj1AJ9gJ6Ou4k7NVWf487gfZmaNZfnDQK9P
         QT4b7iHdibnzchr6HfuHUwCwaAr9IyUgb10ZGMNe7xHzgrA05Fjp6vY63YUd1BP8+MZY
         VujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771249409; x=1771854209;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6rdTp+xDJxOCtPl8bGoK3viPV3DndufBZd+L3532s2I=;
        b=Ky1wcpbI4PasB7Ey3/E7LsVuo/p6Wa7PfnFsGCWXPdcdOtT0G5xrw3VFIzr1PkWwgp
         zQ+t9c+PpaTijZQSjyU1yYcejG5fyl++jbkc+AKjNxDYopvuujndTJZSyo1+gOQ7ZCZ4
         i7uiPngpxaHvJ34L8m6ctZZhZrQN4CKR/gcOFzne0MEOrAfgodd6ByeUr6q4/J6E9vay
         1ojT9MblAzqmlreERqAJqwX9JcRjqBXFyTsq6xzTVI7bSYDbwMajl7S+kTL3qIxoxinE
         gBt8ZRcBGAJb/KVDMINqyFIod40K6AJiOsCF2hX0Msm3mgbXivUZEIlbjNmrAzhGuWLq
         BZCg==
X-Forwarded-Encrypted: i=1; AJvYcCUw5xsz+39ww2cR6QsK634MzGm7N5IIf+S7GAA70feoNsJDW+Art8EuXfdycxNf8lIt6eappo2YmB9Q@vger.kernel.org
X-Gm-Message-State: AOJu0YzO5vzWgMUnhRAOrtfTguV8zTnSMfDttzIDPbyvJZ8kk22NfZ/4
	o9tZup8cgpoBp2810MTLen9AwcCngNbzAgvycEv0zAKh4GIFDW+VtSJi7R7Ty12OosgrAc56UGL
	Tyl/w38RF1FOgxqzEj3dxABObDGnnx1J95FYjgiAWWX2VvC+rQ49csbhNSC+OCJ8N
X-Gm-Gg: AZuq6aIYmbbgXpFJBsHxiexOwlGXnvt0zrukt0ZxZDBatHhg8rRAUOzLL0J3gF9R/o0
	ROOAV2f72YMTaaKcsPhieDVU/J7+6JMm4oDssTu72S9tukftT2hRJqZVz7FVW9XHUvC7Wo1F9ed
	1uARWk8fvP6VjYSyJkN2yCNoxZGtlHAC3G82jgT6HLY8FsgzWRiD1cYa7v5XnKpnnJWcqV0CO/x
	EMgva2wjv0avgwEEdXKlOEN96yhA1sUSELd0hTnPix80c3x3FoOafrMIXaTflJ8bEExaPIDTlFb
	u4x7OPvxUY0wdGqggiPe5CBkcbMk+Qff5QBBELmS0zGtrbzigJpWpPUchRR/+/EbuaS6tpLQuKt
	KJtLLNi/gx9Av9f3yI3jSpEUuphB9Dw==
X-Received: by 2002:a05:620a:454b:b0:8ca:41af:32c5 with SMTP id af79cd13be357-8cb42489e01mr1314138685a.69.1771249409120;
        Mon, 16 Feb 2026 05:43:29 -0800 (PST)
X-Received: by 2002:a05:620a:454b:b0:8ca:41af:32c5 with SMTP id af79cd13be357-8cb42489e01mr1314135985a.69.1771249408488;
        Mon, 16 Feb 2026 05:43:28 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6c1bfsm28883025f8f.13.2026.02.16.05.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 05:43:27 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 15:43:08 +0200
Subject: [PATCH v3 6/6] clk: qcom: Add TCSR clock driver for Eliza
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-eliza-clocks-v3-6-8afc5a7e3a98@oss.qualcomm.com>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=6716;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=/8RhR7OV6oXxghCBO+QdQd4Etv2A/gx8ZJlBU0UKrQ4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpkx7yIH6wAkf7Ly9xwz7r/vJgAhIf+2n0m8hzm
 3rs52+f7jaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZMe8gAKCRAbX0TJAJUV
 Vh3MEACLYx/HLYjVo35oIft9THVNDKL50gkAsjufhgrKovPvstX93o9T3l04FSwTrKM+fvUYvls
 nsl1sB/OxuD45cbB3rt/0KsBLAPfcERTLRpKTgSLEDF7BYJgAfj/ijpxkg4BzFnbrZURRAZHOkY
 7YsD4ZLQaDHBkEPNTB6CcEjVfRNW+aGEZQlUH350AD+pTWiZ0BNjuEcT+GWgkrsOHTswdSaH+j+
 D5xi2/+UvYZ7BG2aOXGkshZyUZ/90VHo09AKVDFSeUpnEsMSl9qqWw2thjHvj2BMvNfwXJlo6dv
 WbsaCU9+BWxcbm98sotQYqXpNXMM2qh4TfXBJwFmGA26HaD9bwiKXhww1UGNbdGiQbpy0M5Pi4u
 cF7WqAD99te62WGNbUZURSMDHDvxDHPEPLGTUH8dagXNxIDlkljFohv74hiEhI0Bj8f5UhLB7I2
 bCea2Z3WrLhs4n1XhqeGNTfM5/LMBGXFODrpYFiHzMN3DTIbG2JTyKTreTGTutCcpDG66CkqVN/
 kakxR8haFQHiPTZPExuHG/eXYuHpEP8z7rO2nZmXRnh8Gq/C7ZnBGj7wAN47PiRKozRj+GpB5jO
 BtNkSAUC23SVUkIe8gffC3THWi8z8kzAcCiBWCT+UTHFnlqlTGUy9nuT0wA822YtxxBdLrYOBnu
 ozQzNkUrVe07QfQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=ZJraWH7b c=1 sm=1 tr=0 ts=69931f02 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=xMpycIIAKlYumkEOWPcA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: S1pTqvHy360zutaDvYqIheXZRWCe8qL4
X-Proofpoint-GUID: S1pTqvHy360zutaDvYqIheXZRWCe8qL4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDExNiBTYWx0ZWRfX9jJBS6tGhDJ2
 0T+NRXRkThhKyfk+/Z5AXDFsHhu6/5OIrw3N2ImV1k5K4hi6emht2mNZQhzVnzdcQAsNrA0idgi
 aIThcifh7KliYUXbA2g5xV4Ye36oNWlIkYCwZA/XH5INaS8rrUkoo8t0wb2b4nCoiAB/L3Lr3A5
 vWRLSLNGAhfTRhayC83F4ItqjiGTMajSaeFYRTCyOdrxij9bzrpX90+191jDtHoJXOJWzYNKmiJ
 5kMjruJIOIqRxZ7rDAnsQOP3rAWxJriroN3Q/q6+n4D6Bh60rf1SOKZiYKAVNwo60RxJgA83YNP
 OjHs9ZVoActNHZNGhmkOV1CWs4re1B40HPenKmfn60Yx5kDmohFf2NPdZR/bRLRJZzLLRY6zwFJ
 gMypnZaeR+6zrqJ6fDhJ6e8IFo09yIlCVsmstE2i3EGWCBQc4E3+s6b/UvdQtFPX6jBt+FomLvP
 dB8/Rznebqgq6u6qzgg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265769-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D108C1445B7
X-Rspamd-Action: no action

Add the TCSR clock controller that provides the refclks on Eliza
platform for PCIe, USB and UFS subsystems.

Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/clk/qcom/Kconfig        |   8 ++
 drivers/clk/qcom/Makefile       |   1 +
 drivers/clk/qcom/tcsrcc-eliza.c | 180 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 189 insertions(+)

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index edac919d3aa2..dce21e33e366 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -28,6 +28,14 @@ config CLK_ELIZA_GCC
 	  Say Y if you want to use peripheral devices such as UART, SPI,
 	  I2C, USB, UFS, SDCC, etc.
 
+config CLK_ELIZA_TCSRCC
+	tristate "Eliza TCSR Clock Controller"
+	depends on ARM64 || COMPILE_TEST
+	select QCOM_GDSC
+	help
+	  Support for the TCSR clock controller on Eliza devices.
+	  Say Y if you want to use peripheral devices such as USB/PCIe/UFS.
+
 config CLK_GLYMUR_DISPCC
 	tristate "GLYMUR Display Clock Controller"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index 6ec63a5d4363..d2bbaaada826 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -22,6 +22,7 @@ obj-$(CONFIG_APQ_GCC_8084) += gcc-apq8084.o
 obj-$(CONFIG_APQ_MMCC_8084) += mmcc-apq8084.o
 obj-$(CONFIG_CLK_GFM_LPASS_SM8250) += lpass-gfm-sm8250.o
 obj-$(CONFIG_CLK_ELIZA_GCC) += gcc-eliza.o
+obj-$(CONFIG_CLK_ELIZA_TCSRCC) += tcsrcc-eliza.o
 obj-$(CONFIG_CLK_GLYMUR_DISPCC) += dispcc-glymur.o
 obj-$(CONFIG_CLK_GLYMUR_GCC) += gcc-glymur.o
 obj-$(CONFIG_CLK_GLYMUR_TCSRCC) += tcsrcc-glymur.o
diff --git a/drivers/clk/qcom/tcsrcc-eliza.c b/drivers/clk/qcom/tcsrcc-eliza.c
new file mode 100644
index 000000000000..ef9b6393f57e
--- /dev/null
+++ b/drivers/clk/qcom/tcsrcc-eliza.c
@@ -0,0 +1,180 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/clock/qcom,eliza-tcsr.h>
+
+#include "clk-branch.h"
+#include "clk-regmap.h"
+#include "common.h"
+
+enum {
+	DT_BI_TCXO_PAD,
+};
+
+static struct clk_branch tcsr_hdmi_clkref_en = {
+	.halt_reg = 0x14,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x14,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_hdmi_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_pcie_0_clkref_en = {
+	.halt_reg = 0x0,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x0,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_pcie_0_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_pcie_1_clkref_en = {
+	.halt_reg = 0x1c,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x1c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_pcie_1_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_ufs_clkref_en = {
+	.halt_reg = 0x8,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x8,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_ufs_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb2_clkref_en = {
+	.halt_reg = 0x4,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x4,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb2_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb3_clkref_en = {
+	.halt_reg = 0x10,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x10,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb3_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_regmap *tcsr_cc_eliza_clocks[] = {
+	[TCSR_HDMI_CLKREF_EN] = &tcsr_hdmi_clkref_en.clkr,
+	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
+	[TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
+	[TCSR_UFS_CLKREF_EN] = &tcsr_ufs_clkref_en.clkr,
+	[TCSR_USB2_CLKREF_EN] = &tcsr_usb2_clkref_en.clkr,
+	[TCSR_USB3_CLKREF_EN] = &tcsr_usb3_clkref_en.clkr,
+};
+
+static const struct regmap_config tcsr_cc_eliza_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = 0x1c,
+	.fast_io = true,
+};
+
+static const struct qcom_cc_desc tcsr_cc_eliza_desc = {
+	.config = &tcsr_cc_eliza_regmap_config,
+	.clks = tcsr_cc_eliza_clocks,
+	.num_clks = ARRAY_SIZE(tcsr_cc_eliza_clocks),
+};
+
+static const struct of_device_id tcsr_cc_eliza_match_table[] = {
+	{ .compatible = "qcom,eliza-tcsr" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, tcsr_cc_eliza_match_table);
+
+static int tcsr_cc_eliza_probe(struct platform_device *pdev)
+{
+	return qcom_cc_probe(pdev, &tcsr_cc_eliza_desc);
+}
+
+static struct platform_driver tcsr_cc_eliza_driver = {
+	.probe = tcsr_cc_eliza_probe,
+	.driver = {
+		.name = "tcsr_cc-eliza",
+		.of_match_table = tcsr_cc_eliza_match_table,
+	},
+};
+
+static int __init tcsr_cc_eliza_init(void)
+{
+	return platform_driver_register(&tcsr_cc_eliza_driver);
+}
+subsys_initcall(tcsr_cc_eliza_init);
+
+static void __exit tcsr_cc_eliza_exit(void)
+{
+	platform_driver_unregister(&tcsr_cc_eliza_driver);
+}
+module_exit(tcsr_cc_eliza_exit);
+
+MODULE_DESCRIPTION("QTI TCSR_CC Eliza Driver");
+MODULE_LICENSE("GPL");

-- 
2.48.1


