Return-Path: <devicetree+bounces-256792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 371AED3A572
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E75DC309F774
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C9A30F94D;
	Mon, 19 Jan 2026 10:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OBEHAtrA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kp4mR3Ey"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3E730FC00
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819247; cv=none; b=Li0piguyY244aMZcDpExg7sjAoKqp3A31rZ5aHq9oplQg82xu/G56usZjeoLkaCCFoBmWMuDT6UJTsroknnqXADVeosm7sIm0EQjQpj2VFUAVUSbC+k/PTfmMr16BuycyfxKaqvACgR8/01Edlr6W5lZum/q/ne4q/U/CSpn/s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819247; c=relaxed/simple;
	bh=N8VSQLtaVd4SNUXyj3qVXPL+a8sCEU/CZusptF8ZaPw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=diiry+wOUs23xCL8/C60oRgKTsh3DFOKeaDJv9SKXlrsY4WmpHfPdAbOIVyYeWwu6JRvkmn6P59TRHGzSlic7WglZZh+6cFjAFnW7FHKIhce4f9C5Vd5x44IEdwgjXm9T0rVWUUZfQ7v5BFQOEfi9V6tV49GwGSlWEQ+1U7l1vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OBEHAtrA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kp4mR3Ey; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J9ngt42966460
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wnn973uC9+XdGiAchuDDhiZMFdYIiAWMeeEw03lA6J0=; b=OBEHAtrAlu8HDwbs
	RkoTd5c3ZdYVwQQf28rXKoUCGjoutZoyT5rSP5WNXNaIxk115uqtEcji2V9fT7D4
	rBbcQ121Fkpg44TcweaCVCJzPC6t1e/MFAe31hRY8tWAhM8qj/bpY6KRaVw+x2za
	GgJnbqbGSqfJOcOv5WWzSFVonvqlSBqu/nFUb3T/H68rhbsmYdhVlH2hiWhw4hzC
	h09m2f5LmaXuKfjIgCh6xicgSlxg6MbzJ9ZRpgXiX4KpJqBOvuigtUJpqKwm92kG
	UEeWM2N6oNGeQ7nX1dcmowJqXxAQF27TbAwZBdSdqSANxpuxhN8IYqhmcHV2m1fQ
	MiCLvA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjaa85p8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:43 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50146d98660so121220781cf.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768819243; x=1769424043; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wnn973uC9+XdGiAchuDDhiZMFdYIiAWMeeEw03lA6J0=;
        b=kp4mR3Ey1Y3CMcTSRmYONR3CYXafwwfR5dlhH2aGAvtG7lZ7Di2vKZCqERdnl8/n2k
         leJAWw8UKYnLdGbCvoDGDkO9uClLx7s+apDIfcRvg+/jv8ij7JuMIoXhM3/FL8uuPSwm
         95YA75kYLvUbZCidksmbE1RGhrI7Jfao4GmkA8HZWTwqbtuMURCDgXRPEDmTktYnwEyn
         dnIt8y6n9oXQd8OagcOSV1Te3yUgxvezJOjD4f6R9ylG1EoDLYabYLl/IjgMV9CNaHIL
         GSZXUsURVERKAs8Zt4KRtzhPPQI+T4/qgjdmlrM5YypMOlmcG28BF48DA/Vt3fhzqzxW
         Jmdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768819243; x=1769424043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wnn973uC9+XdGiAchuDDhiZMFdYIiAWMeeEw03lA6J0=;
        b=lKuk0ZvH5zaewmGMov5sDBSau+HAC3P0Np7dExjvWsGsqyhdKdn7Zv1FoIUeGIUo21
         iufmOGYHwWGP0MGWD3ysCi8ZxuhqiEqsiHOyM6HtkvPq2UgdDt21VLGe/ZUe773p9t4g
         xkx46CWOoNt5O8XgdHlk8RNDkJDEGq4b9OiDq59zi/US70EIdag/+0fheCNHCLH9f5jC
         gAASAzKqrrV1/mlFMPj9foRNT/SnXnob02wjoXiwIdvOa3+mqeWoXOd3F4vMBE62bO20
         VZZ4XlL5T8WEC/PVoibb3KdmkATaahnbFzOqOo8k4DGm1KdWvwmngr+62iDNCQ0hyNeH
         5zqg==
X-Gm-Message-State: AOJu0YzbGuqWoQi5wJEp1byeEY1b602LGQDrv3tKoJeqlTDgTY9O8Csr
	fQptrqzuR3ty6CV+WCszhEizIiLCWUdCd83L2eys8ViTla1PhcSRThUZZLiJDeyPN2fKv8OfZrC
	tcLE2UbjL0mcPYO9Yy55MM4qIjXKaQPUgVJW+BKKTwYDe/vKs9OpUmlseD69oGho4
X-Gm-Gg: AY/fxX4DDL1QmLXcDPVYBOjLOCUQfXcpROrFkLcfCWeHFwcqivEwKg3lDupGxP5YAG6
	B+weJiFzpF0QPBEiax4uO/nhPjPadUlj4jboWtowZaN9gbNZrvPtNtOLsLKvQeOs+7XwUBK/sVj
	k3oqS9nlL/Ow8dSiBn6FkJeYlKgqoGOFPrhqOwt/ryeGXogpMW0A7AzKtrCea9m0Q5X0Gb2uyDk
	vfJBOtQMLYjzoFw0hcT2a1uSQS31LfAppG8cHRaH+r3EAMwvzQiY3KXoWYn2LA6niUk2BiHdX3Y
	mVvNKXpxfx1nBpuEOB7jqbgOo3ExL+pHgJ7cSLLFD3v+zpr8W4+0wuCyELRDzD+b4FZRphjXcOV
	ivPwZQygkwmqWtNdne6ziZHmrKY66LTSxx4tjnB6W
X-Received: by 2002:a05:620a:294b:b0:8b9:fa6f:7e8d with SMTP id af79cd13be357-8c6a6959020mr1427582885a.84.1768819242824;
        Mon, 19 Jan 2026 02:40:42 -0800 (PST)
X-Received: by 2002:a05:620a:294b:b0:8b9:fa6f:7e8d with SMTP id af79cd13be357-8c6a6959020mr1427579785a.84.1768819242411;
        Mon, 19 Jan 2026 02:40:42 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:4f55:d102:7129:1a8f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8c9cbcsm185185245e9.12.2026.01.19.02.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 02:40:41 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 11:40:18 +0100
Subject: [PATCH 7/8] soc: renesas: don't access of_root directly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-soc-of-root-v1-7-32a0fa9a78b4@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1202;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=N8VSQLtaVd4SNUXyj3qVXPL+a8sCEU/CZusptF8ZaPw=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpbgobvncIAUeq9gHK6FXvIHO2lk7wpWwVIIRh/
 iA36+9fERmJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaW4KGwAKCRAFnS7L/zaE
 w1hQD/9acgWHH3rnfakx6eDD26dTI6G9En6q2VSGmlbnwsl9tJ4nMDO2VLCusT5nxXCXG2YZ0+e
 2t7D68GFRWmhge+8Yo4En2R4ksA3WOpsvKOp8tGMji/3KiTjejFLsyF8yQaK21jsa2opCwRuwpy
 OrGdc+tFSsiIs2dFImSIcB3jwA2vGfOxY5RPVMDYtZJKmo3AU+FDDAQEEytNfoRhJ6gKDbMmWLy
 QMx2FZ4YK5TYSINwoxtiVMJScQQ5iqIYPWOo5QHZquIEdmXfClYw4BX7pB8uHTnpAT16yN3GPNY
 ryBK2rrRF9eTdtkmf+M4tRv4OoOL5EmJavIowcGDyHqHwE5FlCADIpYUSeaSwTnuxfW6X1LZr0+
 kDhGDEn5H+UaCrjAqMdrFE1RZ6scfc7WAwBw6LEbaA9Hg8EAkBqrvmJD6304Y78t4bYiF4WLTHM
 33vbth+dCB4S9vw/vX+/qelRibAzmjKOoAzJe4wuTUlmJ/Hq5opVf3rk/gtneFlw/l4bj2QkGax
 u0vlJhYKqneqCMl6QCd90ysN/QI4xNDatW5h3YoMEj+TU/eMdp2a1RJ4cTzEKUSvIkQtXNLFR6S
 gUtj6o/etpKnVJYXyD0IGul+1SDf9TfejO5yWonCratG4+iSt5OrlbTWx0DJ9IlvpgdzWNRuP5+
 tS0OA2oyaV47JIw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4OCBTYWx0ZWRfXyTknhmKEmW5r
 K5BFLxdsIR/YbiGQpGHwdnKLnDisKml9bOkoxaONNjGOom4Tr9w7SnvrjBGqKf6m6LYkT/2BiVB
 Srg2i4pIpPphrE+d2J2p39dQhH1CPZYRSdmn4yjB/0NELyf91OhfESlRyH1w+ezTawX7+wYW9xl
 1EhmZc35gAACxBwmMDkMl5E07ELi+46O3JZkGe36CmMHO3+WjswjFrvhwkQId2ZmcHfhw+f0O2x
 Et9309Lu/UhX1FBZhRFCbF0T3ZJtNmfZld8QjcnhaxMMADv2jUB52CJ0YXMXh27mcwRLp6pClD8
 b28CwYGi9mFDNijvnwhoNgwB0Om46bqUstk1QBbSZnDCpzWDOZG7MoAEitET9lne265LhnwqZi/
 4gD4E7JdfO8M9qb2YinYDD+4uNf9YWaNFYX7AX9+owN9GIrWjTj67ExJN8HD+MoqJ4hF6RRp0sd
 fju15jNuxcQQEJoL46Q==
X-Proofpoint-ORIG-GUID: zASnWoUKBsAF-eCXRTvUMmy_FdOAnunh
X-Proofpoint-GUID: zASnWoUKBsAF-eCXRTvUMmy_FdOAnunh
X-Authority-Analysis: v=2.4 cv=L8gQguT8 c=1 sm=1 tr=0 ts=696e0a2b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=hcp4X6t0sg7LPBOUZMsA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190088

Don't access of_root directly as it reduces the build test coverage for
this driver with COMPILE_TEST=y and OF=n. Use existing helper functions
to retrieve the relevant information.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/soc/renesas/renesas-soc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/renesas/renesas-soc.c b/drivers/soc/renesas/renesas-soc.c
index ee4f17bb4db45db7b96c782b770e5bb4eb139e09..7c54b39b9cdc6b070a7cb6c1c03cc1356bbf0309 100644
--- a/drivers/soc/renesas/renesas-soc.c
+++ b/drivers/soc/renesas/renesas-soc.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/cleanup.h>
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
@@ -468,7 +469,11 @@ static int __init renesas_soc_init(void)
 	const char *soc_id;
 	int ret;
 
-	match = of_match_node(renesas_socs, of_root);
+	struct device_node *root __free(device_node) = of_find_node_by_path("/");
+	if (!root)
+		return -ENOENT;
+
+	match = of_match_node(renesas_socs, root);
 	if (!match)
 		return -ENODEV;
 

-- 
2.47.3


