Return-Path: <devicetree+bounces-256787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A4ED3A558
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C2603053BF8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F4930E0D6;
	Mon, 19 Jan 2026 10:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nmtXdM1L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aRW9VnPm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A1230C601
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819236; cv=none; b=d5jXVoUOyZGwWCBHPJrrxzdAwdSmP8Scn+MixXgdTE2W0QbaigGif2c/jPtsz5VXtGUh8C9UbnPVQ/wvfRx5PPMfZJmPSmUSjMIOpPrzQSJTc2+Q65CmUBI6a9zzz849WL1eZfpPdjA9TYrJhDJXORxgcRsAnn2ZRVmn9kJAy14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819236; c=relaxed/simple;
	bh=PbFFIprfToa4la34wmCmAKivaJm7MBQFtk1XHPgSNcg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UoAQMHLSyYjGHn3UNhomBhurexIkhar9oT9tTjw8kZibo1xfHyKOyf1dzrWojVzqQ+i2QUsl/W0D+N26X2xR4eTfDxLGTTCu14YT4riwyag92lb77qV2PXniPZuoWs7EUnzgGzYQ9aGWXCB6qaqwbmguM6L54mgVUyNlDq8P9lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nmtXdM1L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aRW9VnPm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JARNqv1661389
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	POgrLMWtUfchu0UFOuGxBxCFcPtR77HVdsAYnI4PI1M=; b=nmtXdM1LuG33ut1P
	Lm7V2f7hk5I3fLWZx2Ma8lcDJ7ZCrv9FdZ2ITnRIwFZ69CBPrK8bR+9cjP4R9Bs7
	bufPn7Yp34AFajEbibFCHuZrxmHrVWMmetjBgVxqp5B4gzuTIbZBAmjc0PnLram/
	Ce6P2kmISeTh741nUsPDtiv8x5EAdONn7emQ5zwDvgzCCrDP7+HHN+lhx46JmOM+
	NLP2MQiy4QX7OB+ycHeaGn8hhKGe6AgKf9UydQ3PaM4zuyl5/kKOshVGJyMmTbxv
	fgKA/y5gjTZ5eV6RiYcjyiVvo8C4yICIccyZocLYI+R1c3XdWbUZ/LSiCoB1NOM5
	WFgkfA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjvdr1e6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c277fe676eso1099328785a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768819233; x=1769424033; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POgrLMWtUfchu0UFOuGxBxCFcPtR77HVdsAYnI4PI1M=;
        b=aRW9VnPmRX2zhTHhrRH7LPl6J1RXl4lQgH9TOhGtGk/6D7FdW2NrTduaGwWpQVmZ+h
         ATOomDALC0An5wkxy1PRGoebdDjbffTRTLcrNkwLqf69giUy8Wn5a3x3Zeco4M3PA/XR
         1vzZN+s+E99CXeV6kbn2YnLp5fQMxs43bDq3XWoEX4oZVX4EQY9nQs9E3Oz48DkwnuaJ
         UvynQer7xxjjx0zuckZVG8bLhAvJ4KSipsdhAJIEFM7+CoZEPwgKtUwTOXXAxHkuWKF7
         bNsmyRiCGvgf+lbWrV1SVBQ3HA+RNe+g20A4Kc9SbObRESySOYQORV1R+7b0JxWtl8bB
         lwOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768819234; x=1769424034;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=POgrLMWtUfchu0UFOuGxBxCFcPtR77HVdsAYnI4PI1M=;
        b=fqTDmo78iGwoSGC6dnZsqaQLJPsl84mHae2gljCdlbYlqI7NI4xka7l36/CjWd5Zix
         1ZN6dKj3kst1Iytk/87nKgPPF2xtHSc4d3PuFdjAM9amwrOGPg24lhyorkyQeM3zgg09
         /lnOvbGgEo8g6nCMxJMHOM/mWquyZqGE40drG5LOikzHLCplapYXmvncJahZXa6zcN3g
         HDd+81ox3M8uBlzp9c1j4+A9DLogW5SBvtGYBb4epiRv7B1IY8KpjnKSuwjy7UGG+bxH
         AN7Jd4xr28yyJKEEHyeg5Pf45c4mXZaSJqvFLOubnuXGW2FwfvxeeSXiWjmWfbQ1oM2r
         3jXA==
X-Gm-Message-State: AOJu0Yy6Dbh/hJYqzyfYNKcfTeMZyNYUf2KtgI7sLLVaMYFIG7KmHy8u
	b6tl0SPOAdmyF/+iYre0v+cB4/dkWNzAyquVe2uMbHct5dBQtnhRkqdU1dSt5nyEzKQxmHyaSiw
	wyZ0GtrNAeTfRYn/4ygIolj9nm+HOtXsuahWD368vBVO5kJM6lAgvJeFtjqU6hO+e
X-Gm-Gg: AY/fxX74T92c4eDE7+bMuSowlBBh+t8msiNYUrU3dm3bbbYTV8dcEGUOdSESrM68UHR
	yMDJGUjPFn6QyLRSsXGwZ2k9dj0QGLoFnfQrRdiGuPZ/kCE6OHufd+5i/a3u2iW27MfGNnZnrBK
	aY2waNDJlgUH7YjlylhxmWGpaphEucM5mBVDKGWKmM59BZTGm82Br8bOJrh+ChX9RwuOA6aGkZD
	XOiD675xocqqQRHZ1N0C5mifktA1woEZ6Xt0zoiCQCydAKWp5wXk8LlaU84sxljSq6E0tVuaKL7
	ybq398FTw40JXlPC37ztGyx5DD6Hz7bLcQxKp93E3RAIsBl2tIFQR/JmGt3Bante9IQvp9t5/h3
	xoS28blvx22BJWBNVisi03YhzBE7qJPBBZ6NCeLUg
X-Received: by 2002:a05:620a:31a1:b0:8c0:d16b:b0a7 with SMTP id af79cd13be357-8c6a66c8510mr1419195385a.2.1768819233629;
        Mon, 19 Jan 2026 02:40:33 -0800 (PST)
X-Received: by 2002:a05:620a:31a1:b0:8c0:d16b:b0a7 with SMTP id af79cd13be357-8c6a66c8510mr1419192085a.2.1768819233098;
        Mon, 19 Jan 2026 02:40:33 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:4f55:d102:7129:1a8f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8c9cbcsm185185245e9.12.2026.01.19.02.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 02:40:32 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 11:40:12 +0100
Subject: [PATCH 1/8] of: provide of_machine_get_compatible()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-soc-of-root-v1-1-32a0fa9a78b4@oss.qualcomm.com>
References: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com>
In-Reply-To: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1899;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=PbFFIprfToa4la34wmCmAKivaJm7MBQFtk1XHPgSNcg=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpbgoV9sfuT2VvhKGZTGz6p/Fpn/MdjF0ME6wrx
 zPiggHM5viJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaW4KFQAKCRAFnS7L/zaE
 w7fqD/9JerKCgcU3vWvfo1Hz4H9oZ1Phw/+RcPbdyt6LAUfl+9qyGpxqNKxeCeC13AqyqLCFTU9
 vtgZoPGxKFtxYTTB303D8vGvNtcm15aQQnQZ5qQsCTwshMpaxqWTaW0MIBH7rF4bFIuU/hu2k3H
 km9rXyr2ze7sMGjL2ZdAZbWdq7h4a7rKUOUhB42EBoY/g5t+2Nf0cGItt36Y9VKxVsUrEW1gcTb
 2q74U3LKt5IiGzLIdSosJxMYiLQL/5RPBdgkpB4CgpAhTeeCsJ6MzEz6o+3+svQCIxmIf37+OP4
 eItXkBJF/sBodLXDhni8ooEdyhdEmn2TXQaSKwq8udjKlU02e4DJa6veW6Lh3rgLkksL1E/D1au
 Eb8kDWbD13muh/brJ7zVB8uJD25VlpKrIAFoth/coR3lWabcgaICEXy1M+mPho6+NFfieRKNSkm
 QDLzesgb9UYAXcIDXJ3CaqzVZwimwNqDf/lHjrY9oBr68CdUz9p9Tgeb4O5GWheVuJ1mWY69iIp
 sdeRdFuVq+TjtnzDhJpHq+lFX5Zyi7nQwcJV3R/Ee0FmJA0BIn5iFt5DzBRvHmXjUMG3DJTVlbl
 zPo4PHcd/kCpPn5NV81nI1LKkb0ewtXTDhTXxVyOwZQe6VDeANWOXTxYLGU09Vcap5BSadE2NZv
 UBogRnzIuUXIxSA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: nDcC67B9qWboTUq1xMw24mCyKRGfKiri
X-Authority-Analysis: v=2.4 cv=U92fzOru c=1 sm=1 tr=0 ts=696e0a22 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PolkbJsynZ_iw5VFs6kA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: nDcC67B9qWboTUq1xMw24mCyKRGfKiri
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4OCBTYWx0ZWRfX6mcE6nGT+G1F
 oz3TUvCfeazTU+AioDwS+W3EmHAhWwYrZqtrVj4jX7WwudZtX5sBCkjc1oWQGydK+dRz10AAPl+
 3Dqe8PF6ZkEDELtLKebuI7gCT9MRKOKhT/p2tNP43Ntl+CmhRbpn1m3hzaG0t9BmrMKAbU+3b+X
 D51FwIqTqPJca6BwVWfQaQaBFDwmgN1ZEzpnc+Ri4+ht+Hqa4sDO2QCwJr14CX3h6z2iHvWFJMM
 OGn+qhGhrPId9wZ+UXDbTq3/cT0+GdTATuwhtqZKoqHqDmDIzygFpOYXba9R72pWV1k0bmJ2QcE
 g+oedo2YsEJMW0cSV6RyV9RUG+q6D4nf88H7nxyfXB3zWKPZCWzkmDVGfNmQ1INM7CMrywJWH39
 LcZ43zQ/r9lvb1TC69zpCV/ufP6GXoxtwv0/9GYirBe18xU4XXHyBoo4691VD0ZcdVoQuyRNtXu
 eaSTBgQc5BSsxbQJJTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 spamscore=0 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190088

Provide a helper function allowing users to read the compatible string
of the machine, hiding the access to the root node.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/of/base.c  | 13 +++++++++++++
 include/linux/of.h |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0b65039ece53aa90f30da2420a893a02ab4c6dd8..a7e27d5355929abd6d156b80c52f8f8b08fe6da1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -434,6 +434,19 @@ bool of_machine_compatible_match(const char *const *compats)
 }
 EXPORT_SYMBOL(of_machine_compatible_match);
 
+/**
+ * of_machine_get_compatible - Get the compatible string of this machine
+ * @compatible: address at which the compatible string will be stored
+ *
+ * Returns:
+ * 0 on success, negative error number on failure.
+ */
+int of_machine_get_compatible(const char **compatible)
+{
+	return of_property_read_string(of_root, "compatible", compatible);
+}
+EXPORT_SYMBOL_GPL(of_machine_get_compatible);
+
 /**
  * of_machine_device_match - Test root of device tree against a of_device_id array
  * @matches:	NULL terminated array of of_device_id match structures to search in
diff --git a/include/linux/of.h b/include/linux/of.h
index 9bbdcf25a2b448ba4ec5ddee8b35a105ca4aab8b..75423fb556ee4c108ce25144a0bdc252a89f7d1d 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -426,6 +426,8 @@ static inline bool of_machine_is_compatible(const char *compat)
 	return of_machine_compatible_match(compats);
 }
 
+int of_machine_get_compatible(const char **compatible);
+
 extern int of_add_property(struct device_node *np, struct property *prop);
 extern int of_remove_property(struct device_node *np, struct property *prop);
 extern int of_update_property(struct device_node *np, struct property *newprop);

-- 
2.47.3


