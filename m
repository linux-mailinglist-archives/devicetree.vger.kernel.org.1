Return-Path: <devicetree+bounces-259973-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJsxAI3XeGmUtgEAu9opvQ
	(envelope-from <devicetree+bounces-259973-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:19:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2A09689C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C24F430431CE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6978D35D605;
	Tue, 27 Jan 2026 15:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="faMhi5te";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BYzIQptx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E95135DCEE
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526243; cv=none; b=STsRsMF/tYz8U2Nh5ZqJYPju+P9gZ95ytImAyiAWZeulvws1ulepZfPOQWj1i/5NcDexnJM6/dnwNkz6XhFkXnehIkD0/7MDE5HIE4IzF4U2SveEklObin9L/ukiFQW46pSrsY5OVKqkGs3tWC+1MDRoYa4gwPSbwapixmrLm8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526243; c=relaxed/simple;
	bh=2iSNr2mrjQlNgIhwXI0YLBCP6nI0wEEu4a7xd+a/z7c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qVJG+fQCh1PERDrCnyrPO1di6RzdkwcpPEvBn9o9Q2vMKBPBfxXl3fswYEv7TjqzwhzdA2yWLrgYlaCPkLC/VcP0VBnFJ79C8k9R26cVwqZZNBE/6HAcYk+RqFHlSbEgh/fJa6iMva6JmBD69lIy1aj8PZ65uKeBYqUQbQ6m1DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=faMhi5te; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BYzIQptx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA6uZ33857547
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:04:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D72x7J+ihB8n1bTt8RDNy1J6TX9XausoMPQdTRV97Yg=; b=faMhi5tecmIDZtP8
	P4qDKWcnjhYgIh++OewLaHYBWZwDr7LgF/La7az9wtTZvphQE3gh5+Mpfg/wHq0w
	hItNgPyg+HQTIbRjY8cK9yp8A+8pfxEc6feYsulzSSyo5iT4YPsCzyb86qtAdpq8
	1v6P9c+qElrgfvUIPVGd7cl6f7p3EzW3Z8BCaHk3ee/n/aoAtJNs5iJwxghcaE4p
	pM1qYMzV3WswrqZv+Cj1mWHCQBMydLtJZVrc8xbKcVm2bEr/BxM4T4ppF31mdEUw
	HX0Q4OSbuWw0lR8d3cBxVbI8fcRhS+rv5zV/rAgVbCpQr5qOs3nsJTGIpPMYe0gZ
	4nOq9w==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxffs344h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:04:00 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-93f57cdeb11so8263579241.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769526239; x=1770131039; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D72x7J+ihB8n1bTt8RDNy1J6TX9XausoMPQdTRV97Yg=;
        b=BYzIQptxYVvQUWhpwi8ueDsQzZrbpnvDv1iWuUkJFOJ1qjJr+nFVd+p9+S7m/3WCfY
         AtwaFTrH1sEpds6DmTZUqAKY4WETJ8T9C9t3KErfp/iJM8NYyLfNciBEUjvOW2fcstzg
         eLtGVb6nRqSCKFIZ00UA6MUiba4SxDtimLB0p70lSoG/x9gTtTBk35fYD+5pmyZBq6Kx
         9mnPUhq3TvXMoVaIwmic6DemYLSl5HlOqYubOqrjHqLFUHMg9Oy/wLHhLXCD9jl+sC4X
         ZSYGdGkI2wzoPKaGw7GJ46C5El88Pqp/wVEGu8y0m5s1prdInnoPFk4HAzPwHEmXD63w
         S9xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769526239; x=1770131039;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D72x7J+ihB8n1bTt8RDNy1J6TX9XausoMPQdTRV97Yg=;
        b=C1cnICLW2uvhzgF+R+/MwFZmgoEDaeiws8z8kKN9SrFl1jlAOXSWdoZtomEbH9uoRN
         TWpJTHm8tOrItiNHrbqHUrQieD8uGl9/cAJe1DcQNxg8+qeFWar8xCNhKpNonabUKa6y
         alM/cX08RUDSb4/sLscZWnlqQ/smgG1QClNeqD1OcFxSH04TaqpLxWatzkft0rnDQqPJ
         R26aAsExGgLFxsSJrlfeXkD24+xWgDasxVEtxiCe9FAgVu+kYESlX0+MfaloBr1Vujmr
         dOSPqg8xcEcaCMmuIopUUkWkdf6x/CRIBxypQXXh359MHacBicnFHWBZGmB8d3mIZLEq
         b0vw==
X-Forwarded-Encrypted: i=1; AJvYcCUu1G4WUSTJKVMICHgNEHbR8seXWYgFgnC7dmu2tZfSUei4vSkNRTpDQwPCdbLu9J5bLPlW1DDIQe3o@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ8UItc03x+CHHkKwAfCBN6+2i+PevxiOL/yYXXWYFVITJESjk
	1ns7Rp2PVMns8TOuaLyKp7jYhRCk1CtOW1zc4TBrQZqKlGNlwXjyQhEZ9joxYOK1e4vcP2KG7pn
	OzIEEIj4G9E+efNnyeMWTtVRt2I1xbbBjBwvH69FHjXB1LA9wt1XeuSkRy8sWomBg
X-Gm-Gg: AZuq6aLhSo1jE50p1zUVJ88354Oj0/srxAhITdGaJkw6C/bcuh/XxPKsmJPsszFRjCs
	b5nunyZhgnGqbNUt6tGzxRpM5TrPkCEX3vR7kxXho3qdUcJLU8dgbys/FbKtoD2wAGbJ0S7rNra
	gq1iNBWe1S7ggBqc2x52IYJ68c9du0PZ5PUYXgrlLXxvKZzW7vSruKt55GXXLhS/qMSD56C57mz
	jZrAOHWmWvSEshlj0Y89yZE+BQeBTx5XwUspUXehpKloCsMQWedPa/RgUV+5Gsy3uORMU8rP3dY
	qUhZtWVcqtZ8BuwIo8zWOelR81ZK77vbJ1ljlH/Il9PPzp6oXnyUw/TK3RwC2aNj0yinOSqd6CY
	G8W4w7lsU+rGxnjmCnQ==
X-Received: by 2002:a05:6102:41a5:b0:5f5:402b:7eda with SMTP id ada2fe7eead31-5f7236260dbmr660491137.10.1769526239232;
        Tue, 27 Jan 2026 07:03:59 -0800 (PST)
X-Received: by 2002:a05:6102:41a5:b0:5f5:402b:7eda with SMTP id ada2fe7eead31-5f7236260dbmr660431137.10.1769526238425;
        Tue, 27 Jan 2026 07:03:58 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02cd8sm36895097f8f.8.2026.01.27.07.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:03:57 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 17:03:24 +0200
Subject: [PATCH v2 6/6] clk: qcom: Add TCSR clock driver for Eliza
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-eliza-clocks-v2-6-ccee9438b5c8@oss.qualcomm.com>
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
In-Reply-To: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=5692;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=2iSNr2mrjQlNgIhwXI0YLBCP6nI0wEEu4a7xd+a/z7c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpeNPQfS5Weo/P+hX3rznrRv8hh2uG9S0FQ/wsb
 qaumj89Lv2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaXjT0AAKCRAbX0TJAJUV
 Vvz0D/9YSE6TTAytL+Z01mZTtWnJBXwGSVqjJ+a5P7xmYi/q+MOpTENsB1Z7dzMaj3KlV/naTY9
 sUcJiNWlkwPHfJhaL1XMyqbYluAu1kUff7xCfoAyP8zOR1sJAODJV8dZc4zGLOElAWWN6zRfkoj
 gv3WIw4r+8i3yzBVEHc84JCLuQDrcelVcdpqelJFWay+lGLOj4R7EPWw7ThjL1AQ3N1RlsC33K1
 96GW71GK2RgwJNtN8ULxdf2988YD97cwod4GVIvS1pEFX7kp2rtS/nqxbTu0iP6bqXPkX7XAbXW
 MpPAgQLOhaBW3W/LWjq+YON3datSgWbYGsichtKASbl8pZ4K/nbiBf4YCCF8bBvxuVkpEJ1L6Yx
 we22XWdqclB+NIxk+SHgQzKjNqR5q0izVF5BGZCGKUb+sbqugmJFqxyz6Xn8uGJfTmiHpp4udYv
 3RRYNIfmenEeMVvp3BSly6xvSR1+YJTBPa/Kcs9sNf00orMM7NarJwgRL0VvpDdvd5BQkFAbk0N
 rE86N3Oy9ha8iyKWo+ycsR6l9QgTfjDRMw4pf2JzXmmis2pqixsoOAm9+qqYz/DojlQMfG5fecD
 5OeTK6gRZc53DYyHCUT19nH852ZtBO32N8ByUrypn9P8cHdki/x6QyLP0SpIHwKiT2Kb7EP4icH
 C2cw5x4pSWlAMIQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: zrYo21YkQi9G_r5XaXax1xbrstFJV3OC
X-Authority-Analysis: v=2.4 cv=YpcChoYX c=1 sm=1 tr=0 ts=6978d3e0 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3iaU8NaM3X0bdk3JexsA:9
 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-ORIG-GUID: zrYo21YkQi9G_r5XaXax1xbrstFJV3OC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEyMyBTYWx0ZWRfX2Mjg8ImiNMRF
 XZvsTjnV6L4nEY8ZDpiscNLhvNNLVgPGiWCCGxX2w+YpCWLST+HVfjo1InMrjweEwwvDlsocAI7
 dx742eLNr15YXeAtJWtvzdZz1EWo+YxTG5XQp16+ulRa2+168Lrp1286zCouSlhFm6W5I7dXO99
 bokA9c4TNe26hwkz4LK9hBcECiDv6Ru0efv2Ki/kIIym8tJuX6doVnJaJhiWU/bK7TDhj6jySVV
 jOzFN6XYCHksyKPVYEOo76yEU86KkQecoMBSifsdQIrcDkLZ/us68T9Bv989V7YMwgVCf3TDCSm
 T13v5sw9iU+FiEPCm2N7/p894LN96yiwnNpeAytg28cMYdhF9/q7JMNK/bUVrcd7Igu9a0cqFLo
 Hlp1l0SAe4Y5okPwE9bgyq1xd/okcDfpqYlVSoqJ9SiinCVTqqqJfjVKiw7BMgYaQGf7nu+fGpR
 3l4A03/5h0HjLj9HYfg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270123
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259973-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6C2A09689C
X-Rspamd-Action: no action

Add the TCSR clock controller that provides the refclks on Eliza
platform for PCIe, USB and UFS subsystems.

Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/clk/qcom/Kconfig        |   8 +++
 drivers/clk/qcom/Makefile       |   1 +
 drivers/clk/qcom/tcsrcc-eliza.c | 144 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 153 insertions(+)

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
index 000000000000..e01c40341d40
--- /dev/null
+++ b/drivers/clk/qcom/tcsrcc-eliza.c
@@ -0,0 +1,144 @@
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
+	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
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


