Return-Path: <devicetree+bounces-274774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHVSJVUSs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:21:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4202B277C15
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 65879305B081
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061E240243B;
	Thu, 12 Mar 2026 19:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H/JBTheu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z+HOUN/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2F6402421
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343103; cv=none; b=eAjC3nY0yp94zfK2x32g9gzmBUZN0Drfk/A6wLx2ZRUF3HEADoIfBawcbzEDmABv1JkPl1KKVJ+Y3Kr4WgZTl/3LD9M4l8g1arTuD2UGoG5c9P5pvgIMBYAvp9bwyrhdQz4F7t+bbjiKtL6D3f4uf7mRecZOHmxu5lpBnqxErqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343103; c=relaxed/simple;
	bh=okCFCbRAc+6noYCZhUa9P4+dnrKGsmwQbeCL9ESxXoY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RLirqYR2nr6WKlYyFUWkQPOK+6DaPA5rYKCK+vkEO5SnBdas/StOABZupN+I27kyo8HmergpM30cJMBNp1E69C0YpIaT+f4kVekCB/bPQKkel8NjT9K8unBaGJitgdSqAUdAwPE39DTQZJvADab7l7BHDqBtyEKbnC4l6Ozdxrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H/JBTheu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z+HOUN/r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CIjk993137274
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x+9XW7vfZaDu8NmPyNpd7RXAAdKnbnXlX5Wd8i6InOU=; b=H/JBTheuNdlh5Bo1
	WQ2iZ/nH5d9rg3IxdpZd0T3RvimYsq7OxnvSATKJZMT4p3DQfqKrgH+eFjwW6MWO
	CTT1z6ef4JJUpS60nEl9qXIBo5LjwullndRGEyCUflVubKxwGM89grYOZB3FzasF
	EA25CFylXTLx8ndlEhHg0fqSivn1/yW8OcbQSbfsdcALAoLZcCmNfCKfn5OclIKm
	OQ4++9ubE9dPks25z3RTnYiP4Mi0f4exUlbyZjQoMc3cd7zrzmQGuF1yLebcpdfp
	IeJM9W6sU3tg4s0GPcAPfSO1h3JGzXZb3Q/GJxJhv7SwU/mW3D7gD5CHiv4Ei6O0
	tWDXjQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wba0j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd849cd562so860032985a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343101; x=1773947901; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x+9XW7vfZaDu8NmPyNpd7RXAAdKnbnXlX5Wd8i6InOU=;
        b=Z+HOUN/rWCklvcDAmtksdy1yBVWujQoCfz/LyZEn2YZnznmp0XBV+fjfUKCel1Me+8
         Ns63UDx75M85sMbabWRKje6RTFYPQG1ROQ+jQIHBkzUQllm6QShWYL7JxG90RhsQKivS
         bqyHTkUqy1K2HjhagRjyIT+nlZhOMG8K8inBcfcItDwP/oPp9UEFosdFEhcias0+xo6j
         PlIOVttooveP3FKWr3Wh9UY4+nqPj7SXUIrnt6veuw8RZ8UOpW+fZIxdhLD5sSCVVVD4
         hV2k792leB5kqh6UMK+Or+q+ZS+a06l4Q6z4FDa22E61cWjXFpkJvuqnf6NZiWEPqPOa
         uvyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343101; x=1773947901;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x+9XW7vfZaDu8NmPyNpd7RXAAdKnbnXlX5Wd8i6InOU=;
        b=ltE/UDvVoZ8jIUs/9sIDDF4xB8Pqh8S6n3qFQfWXiBSzZ0uVTpAbQi9nI9q3DVCxM4
         YiwYu85zJMO8oYVnFKkJCOPY+9K3/ddOFoQFU65UANdIWJfJg1pYKb1j3rz9d+e7BIhv
         OYDGsjluOPWiLEj3q5StTazjUjh6PnycOuYg9zYZHTHSB5ZlCiknyuOM7vT9aCSzFD7K
         H95tCtIeun8hUPM9mXCwbNl2t5rs0YNgdF+oT5GrZzWZ/PGSUdoKNOjI+hOKQIWISp6k
         pi9jT9YRVl48XxtSTvfPZUcL9pS2nhPMyIgGgMmfKnsWG6tOiW45nBLUlfHcYfFqsY3d
         tOkw==
X-Gm-Message-State: AOJu0YzV5KLlLLPsTrjsB1j74QhgSFuzYTLtsX7tWfShLXhZlF4jZ8l6
	BxGsmlHKZlUrs3FmjsVNY3TjlOm1w/f00cBxiJ+DA73hEhsYhDjUMBm8wgV4KY4h2nnp3kGgg2Y
	3SloPQbm8ByCumb18s9EoMJdDnN4JVzMBEUgeLdSRtHj6oz26orjSYU+9IYHJrpcv
X-Gm-Gg: ATEYQzz5kZQ8vdnRIQ0eUuUVVEfk8Ah9P+VZ+ZdOaF59bAN5MvJX/EKH/T/JNQyif62
	oUY9aw4p/ki9DuxPoKp+ODamBLYhIKcnPYh/+PfaO4L0ISobl0fLVEwd87YvYt2Rih2JxCEuEFA
	o4SiMUDxxmmDvkNZMZVqo5gZLOYsJ7ZO7QLwfT0hm2reotebekunSoMpUiC/mFkS8EUC/erON3l
	DRiRAsXliN09cUvNmGW4IxiI3UvvO/n462noek46JrVASR+gjLQJVKvd3LR2cHCyqcbzwM6y0dB
	Bq5wqgS19qhk3cw/jmgdogshNRCbZbDryRAI/kaRz2h834u+pl75cr+3Ktff4BZnU9Pvs97Wce0
	Nw7qO92LTJbHoa1LDNzZfw9g63lIRLXSBYdEa77HBOYeW
X-Received: by 2002:a05:620a:4d5:b0:8cd:b626:cdf1 with SMTP id af79cd13be357-8cdb626d117mr76166885a.46.1773343101105;
        Thu, 12 Mar 2026 12:18:21 -0700 (PDT)
X-Received: by 2002:a05:620a:4d5:b0:8cd:b626:cdf1 with SMTP id af79cd13be357-8cdb626d117mr76163185a.46.1773343100450;
        Thu, 12 Mar 2026 12:18:20 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:52 +0100
Subject: [PATCH v2 05/12] arm64: dts: imx8: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-5-0d5040eb4a1e@oss.qualcomm.com>
References: <20260312-dts-snps-reset-gpios-v2-0-0d5040eb4a1e@oss.qualcomm.com>
In-Reply-To: <20260312-dts-snps-reset-gpios-v2-0-0d5040eb4a1e@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Marek Vasut <marex@denx.de>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@dh-electronics.com, linux@ew.tq-group.com,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2890;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=okCFCbRAc+6noYCZhUa9P4+dnrKGsmwQbeCL9ESxXoY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFlucTKXuhI/+bUlAAr1ol5ZMSA3gi2hw+Pb
 v1q0d1r33SJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRZQAKCRDBN2bmhouD
 1yWvD/94DlbtVJG5ChNG/ZRexVSm5IWZghRwXXrMlPRJpFNH371UMGyhXuJRmWraX2POKnKOmxZ
 o5MVcL2Qm0PMj34NiB4HwOHVLUDJ1FD8f5O472uKCq1TYyOAtbXfWOKmZM+uOu5vQQ5coj3Onx8
 7R68P9kX3NyBH/z+FsYMJdhU1pT3SNzCfC2UANbGkqT86RK/yXv7PORaunygcNn7+9Dw4lj2rUX
 rNKWD0sacnSTavQQSd7MUYnvTL2XMNt1x78ZKCuYL1EikboDFE/1u3TDkLKT72zBlUfNWt4jthW
 Ra43WA2j56Y0Y8XHDHO5zPqq0gUQo5uruymXcvZvSBXBrIuEgAEa8lvk556njXXtk3QKnc+Xaiy
 HX33sSvDV69+5ql2CNJxTJuR3A8rXEZj/45pm5AwEqDqk7e4Zq4/e1iQLoNimPUFShGEtKnZhu8
 rGwvwdNyWjzapRaqovk3NBdFfoCM5GktJfB+62u6U4ufnfGF4pCtVjK9J3VR3XEL28KBnhJozMj
 U+09+IgX+Ng9ik5BKEydprb28zo7lOcrImusTvlIYYDcRNJ7ALzr8vX7r8nuI2RgbbB1+CIJeYA
 zLdG/0Ve2qbSXUR8p+fAkPTCKbuhcbzvJizIZ8sGYU3ez7vkt7A2bUrZC+0EW2pyetJS9paV3Ss
 sWU9CNcuO/KuZXg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: ra3xXCo_BbgjejIjVtrFxS8AlL5VXkqA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX30DRJnBq/OGI
 SJ90GAoX07ASYECkGzjMIfOL5XVHzORA/9F5+Dp/BcBIkKAt32MyCf3IKOalBQlTUrL4gcNFR+B
 RsqYnVdVzB1gHCQgc9hojWjeRRNywmIpWieheEFXp6sQqw5lJKmz2m+xh7T/bjJhETIg7LiACn+
 CZ6feoAKs/X0sPRO/DjgoPFATYWxHo1GokwkdSbE9I6vwSgNl9eRX2JioFwde58mAHzWGbgIJC7
 9VOhGrI1jBFBKvpFJD/0x4kJEnLUtKa7PKfqN2DBe8fthGz3tPne1PZS5Ri//MkSSIof6ccCnsF
 Cz4OhTpbfx3DOep7ou1muRiWX90D9p8IVfeIJNTDylydxNvDFUTLNs0Vns0A7gIfbp+dPSEtRpz
 y+qUX+2ap/d/2hrXNb7+XVlWN2uDbUgGDjT4MlGmanKccV0tgXSCkZpXtJYcGi5BEbOvudso7jK
 RfyiX34K0qVhEd6xBZg==
X-Authority-Analysis: v=2.4 cv=YucChoYX c=1 sm=1 tr=0 ts=69b3117e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=lgRk19EvD0hfQEPH5KAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-GUID: ra3xXCo_BbgjejIjVtrFxS8AlL5VXkqA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120156
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274774-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,tq-group.com:email,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4202B277C15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX8 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi | 4 ++--
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts       | 4 ++--
 arch/arm64/boot/dts/freescale/tqma8xxs.dtsi         | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 6fc82b5eb58c..6d8a57ff56c2 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -806,7 +806,7 @@ &pciea {
 	pinctrl-0 = <&pinctrl_reset_moci>;
 	phys = <&hsio_phy 0 PHY_TYPE_PCIE 0>;
 	phy-names = "pcie-phy";
-	reset-gpio = <&lsio_gpio0 30 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio0 30 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie_switch>;
 };
 
@@ -816,7 +816,7 @@ &pcieb {
 	pinctrl-0 = <&pinctrl_pcieb>, <&pinctrl_wifi>;
 	phys = <&hsio_phy 1 PHY_TYPE_PCIE 1>;
 	phy-names = "pcie-phy";
-	reset-gpio = <&lsio_gpio5 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio5 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
index 5c68d33e19f2..bdd1dbc6b322 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
@@ -651,7 +651,7 @@ &pcie0 {
 	phy-names = "pcie-phy";
 	pinctrl-0 = <&pinctrl_pcieb>;
 	pinctrl-names = "default";
-	reset-gpio = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcieb>;
 	vpcie3v3aux-supply = <&reg_pcieb>;
 	status = "okay";
@@ -662,7 +662,7 @@ &pcie0_ep {
 	phy-names = "pcie-phy";
 	pinctrl-0 = <&pinctrl_pcieb>;
 	pinctrl-names = "default";
-	reset-gpio = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcieb>;
 	status = "disabled";
 };
diff --git a/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi b/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
index bfc918f18d01..677a05b38391 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
@@ -407,7 +407,7 @@ &pcieb {
 	phy-names = "pcie-phy";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcieb>;
-	reset-gpio = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
 };
 
 &sai1 {

-- 
2.51.0


