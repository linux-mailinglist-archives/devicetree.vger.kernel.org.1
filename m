Return-Path: <devicetree+bounces-259667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNR3Gwf7d2nlmwEAu9opvQ
	(envelope-from <devicetree+bounces-259667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:38:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FF88E3A0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:38:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B66E73025A6B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67D4531065A;
	Mon, 26 Jan 2026 23:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LQM47yFy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jC6Htphu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19C230FF25
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769470717; cv=none; b=oLZXnuJN+CVE4q357trpSZzCi9L41reodIoZKv+gj2tVSDqM75DCsG9m4SZoTmJvIMU7/Sbb54Gp17FgGTWqHmNW6zthg/98DR3YSVv+kHGSYpjg2lqi7d9vQ+aoUcsMFJLjnhz4EK5QBATSQgOm4T7oTarPtPuG0Gs9NAr791Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769470717; c=relaxed/simple;
	bh=xMUCXc+T1mxqitUAHJsbyD7zN0MBtP33MxPyki89jC0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RBxkhFEKryJxfVZgBwhOtN9E0WGnGAIvW9e9Y+QDLzsb4+JY7AAQGyD1BmsRHph0rUevDRjGOu7b+SjNRmIGi/pvNZVEwjO6z55Nen5ZrPtyHdAOMEAXTIXex03E8HWHf0Oml6x95RFsdsiXs5BirIjSQC1rD+YeX1ivdXZnrsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LQM47yFy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jC6Htphu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgAEX3706780
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=X71iaS2pCQJ
	5JwChEZnH7egZFDTUof/Ft5BQu4Wr5X8=; b=LQM47yFyeyh8lDyXc7+YIA53FFW
	Y/WCEZJiHdNW8Unkb1fmCh5B9uXfUcqi/hm5kQrRf0mwACtfwGayJB+QxUaG0e+N
	GjpFbW3BAs2rlxSJAYjQy40++u4EDyQf/HaSQf/0vd1MB23UeGuWYmZjj6wlBt/3
	dRwtNAO2L+w+JVF3LhXcTLwvTpvs/6kbHGaESrhnb1gOyC0UCP9P43v1qFuKR0pF
	E9vnlvt1JJe/y4o84gC6Vh6Bsp3gQ+IKODr1R/pDWL8nmB8VpM8E+QV1xct187ox
	w10soBVm5Mmmh5n5VgwoVsiT5y5HAtLU/5Hz/HoLZ2MOdJ1Z0JuFR68RGNQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3bgf1x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:38:34 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b70bd4a2ccso25531675eec.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769470714; x=1770075514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X71iaS2pCQJ5JwChEZnH7egZFDTUof/Ft5BQu4Wr5X8=;
        b=jC6HtphudHaGci2yxAPdgNRxZnuGACF4blVXNU+3xUEj/WnhbKU1VoP6qyHukVP2+i
         vYClwKtteSmrmtUdTOSFn0iciQ/uAkMsRs+Nq1QD9Uu90npWtbRp0Bum6UF5IvDPQEan
         /4D4h9UqUEvlbgRlxQSjR12YH0c6yCwa31bsVeqTdNbDMJQIT+vBQOWCNgCCh8m38DUC
         U1jLPu9M3fwChJOFw0V9pAQxe0peAqezZwfj18dloFgzZe2dxmHCC60lEtVbx8ZUn5yg
         RTwNGIGLNxPQTkl7CU0FIEcPs6V2Zt1CM7AUKFmyeDDtW2NJdJ2KAs5qouo4XK2nrgBQ
         0LgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769470714; x=1770075514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X71iaS2pCQJ5JwChEZnH7egZFDTUof/Ft5BQu4Wr5X8=;
        b=apIyupNFLzoCiS/z6PkMsu6FaVTtH0ji0SEO8noEc4mVjLLeMP6T2YkZTdZsfd1BGI
         Y5B2s/zfy8BKvvZJlp24FqTMqswJLJFQSuNemfxVYqwsgvhrpYAFPFOu4rJwzTwd2PCs
         w6n1au5RgWde32v/tZ2JbECxcYe5H7OAnEEwvRjrQE9y5oNmAf/ixwdF6QFZfBcLTA6U
         vVLj/aTU4M7IFqm96ZqxCcDeNogbhM75F7KPdzjG8tmmnyPoc/Kbn9LQigL2h9QP454C
         whvNeUX7x9oVNyPC8b6CY6z9qgg5OHqBSIZJyEaMNkYRq++3W5ycNv5HahKxtGf+Xkw6
         kqGw==
X-Forwarded-Encrypted: i=1; AJvYcCUk6bWENjNiiQ+GBS6gaPkNE89Y/YVSHxxkPeJNBk0RUxKGFGcH6RyjRR2+VCG28b6WY9G1Bu4VL5Pn@vger.kernel.org
X-Gm-Message-State: AOJu0YxdXuA5/6+cdeZb5bMhb1ONITDz7gPqMePPqMftpWw3CgJgUNeX
	PcC1AGIJFiBwrZe2gcKXvy4dOgeCFt3dy7Q0XkdtgoF/ovLdh9iSLHjVikNYk1igE6/u/FRAnHR
	hHHLFmLhK6KstKYO5YMpVzTtS52wjhbQZGwK3l3G74Nwav1acBejsVbjhmiWKKrJt
X-Gm-Gg: AZuq6aLHij6oZhdxjiC6IXtMk0lu90zQqcdX3MjJDOR8EvWZtEDwEFp41L0LOz2hX1c
	PJkgRTY2aqtSeQiZykvr5pNWS6cdvdn9SAN9D497g5LEyHsMetOy3XubxqC/wwNcve6vVHFoAJl
	opV3Sn1ucBilX8P+fGkMbp5iGRBb7gd1tq1crGY6XAhCiQGaXrH1rvO0RDQyKeCiRLwxalxIxjU
	lcF6o/s9eH4J/Q/wIiWoHtMA9FT3wMTOBR1pozwR9T9QXxYgwCcLW522PbmrW+qj1rwESQuCIQP
	at3xtnRGI/Wcah8bBQNntxcvqG6vhSswngJCFdpxqnWxf3tZTxqlSR1aGr3xgBuOOOlJ+Qf6/Mt
	3USIa3oveGiFVsrLUYUNiWasC9KBMIz78LrKH7Fljqk2HVSv1pT9p2XRQ2sWMCt4=
X-Received: by 2002:a05:7022:699e:b0:11b:9386:a3cc with SMTP id a92af1059eb24-1248ec9c731mr3816963c88.45.1769470714191;
        Mon, 26 Jan 2026 15:38:34 -0800 (PST)
X-Received: by 2002:a05:7022:699e:b0:11b:9386:a3cc with SMTP id a92af1059eb24-1248ec9c731mr3816945c88.45.1769470713660;
        Mon, 26 Jan 2026 15:38:33 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90ce0dsm19948967c88.4.2026.01.26.15.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 15:38:33 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/9] usb: misc: qcom_eud: add sysfs attribute for port selection
Date: Mon, 26 Jan 2026 15:38:23 -0800
Message-Id: <20260126233830.2193816-3-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
References: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: AdsdecqHJCI4JAHwboyHxGW3_TtPTh0Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDIwMiBTYWx0ZWRfXzxyEXg2D6cH9
 g5+TmOepUOdxMRqHzasSWVw7ileIx3Usnj4RDW+t7DdTm1ekY3Rp0kGeuQ/gJwoZ4/2w6mfcZ45
 qwIsnX98q73ldx6p65/g+2mTYEUJitIUYMlvf9pTv9l8+QOG1ZkQiIaUyUye7CnuO86jVZv4N2R
 Ej29q3ucSUNwo04wOYcyVnt7j2Pk8Xg+dHzIB7Jd8mf26zbVhrXC3KlZzGoVi1kEx6vvh5cKNnQ
 5/UtFJTN6IMZ5dcnikkuzLx7LngjU2i+ZQTHNArf3HXdSfJOzZeLqkdDSIpe25JjHpwYOhRymj6
 w51BD5n890dYF2AcAo2dSPlIXq9bjMnaYh3v3g4BHea9FNCv8mndKNp7SF96Fp6OefEarttcrGf
 iwiGwn8jk2Ad895h7Fz/PWkmrqEox0TK2pWNKbtxKgDC48HFYM2Lz0oPBygTMSxnnR49IMTvbJL
 /HEcQTxoBc4V38uNZfA==
X-Proofpoint-GUID: AdsdecqHJCI4JAHwboyHxGW3_TtPTh0Y
X-Authority-Analysis: v=2.4 cv=AOFXvqQI c=1 sm=1 tr=0 ts=6977fafa cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=un400R04Xmhap_XYEvQA:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260202
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259667-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E4FF88E3A0
X-Rspamd-Action: no action

EUD can be mapped to either the primary USB port or the secondary USB port
depending on the value of the EUD_PORT_SEL register. Add a 'port' sysfs
attribute to allow userspace to select which port EUD should operate on
and update the ABI documentation. This is needed for systems with dual
USB ports where EUD needs to be accessible on either port depending on the
system configuration and use case.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 Documentation/ABI/testing/sysfs-driver-eud | 16 ++++++++
 drivers/usb/misc/qcom_eud.c                | 43 ++++++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-driver-eud b/Documentation/ABI/testing/sysfs-driver-eud
index 2bab0db2d2f0..67223f73ee60 100644
--- a/Documentation/ABI/testing/sysfs-driver-eud
+++ b/Documentation/ABI/testing/sysfs-driver-eud
@@ -7,3 +7,19 @@ Description:
 		EUD based on a 1 or a 0 value. By enabling EUD,
 		the user is able to activate the mini-usb hub of
 		EUD for debug and trace capabilities.
+
+What:		/sys/bus/platform/drivers/qcom_eud/.../port
+Date:		January 2026
+Contact:	Elson Serrao <elson.serrao@oss.qualcomm.com>
+Description:
+		Selects which USB port the Embedded USB Debugger (EUD)
+		is mapped to on platforms providing multiple High-Speed
+		USB ports.
+
+		Valid values:
+		  0 - Primary USB port
+		  1 - Secondary USB port
+
+		The attribute is writable only while EUD is disabled.
+		Reading the attribute returns the currently selected
+		USB port number.
diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 926419ca560f..1a136f8f1ae5 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -23,8 +23,11 @@
 #define EUD_REG_VBUS_INT_CLR	0x0080
 #define EUD_REG_CSR_EUD_EN	0x1014
 #define EUD_REG_SW_ATTACH_DET	0x1018
+#define EUD_REG_PORT_SEL	0x1028
 #define EUD_REG_EUD_EN2		0x0000
 
+#define EUD_MAX_PORTS		2
+
 #define EUD_ENABLE		BIT(0)
 #define EUD_INT_PET_EUD		BIT(0)
 #define EUD_INT_VBUS		BIT(2)
@@ -40,6 +43,7 @@ struct eud_chip {
 	int				irq;
 	bool				enabled;
 	bool				usb_attached;
+	u8				port_idx;
 };
 
 static int enable_eud(struct eud_chip *priv)
@@ -104,8 +108,47 @@ static ssize_t enable_store(struct device *dev,
 
 static DEVICE_ATTR_RW(enable);
 
+static ssize_t port_show(struct device *dev,
+		struct device_attribute *attr, char *buf)
+{
+	struct eud_chip *chip = dev_get_drvdata(dev);
+
+	return sysfs_emit(buf, "%u\n", chip->port_idx);
+}
+
+static ssize_t port_store(struct device *dev,
+		struct device_attribute *attr,
+		const char *buf, size_t count)
+{
+	struct eud_chip *chip = dev_get_drvdata(dev);
+	u8 port;
+	int ret;
+
+	ret = kstrtou8(buf, 0, &port);
+	if (ret)
+		return ret;
+
+	/* Only port 0 and port 1 are valid */
+	if (port >= EUD_MAX_PORTS)
+		return -EINVAL;
+
+	/* Port selection must be done before enabling EUD */
+	if (chip->enabled) {
+		dev_err(chip->dev, "Cannot change port while EUD is enabled\n");
+		return -EBUSY;
+	}
+
+	writel(port, chip->base + EUD_REG_PORT_SEL);
+	chip->port_idx = port;
+
+	return count;
+}
+
+static DEVICE_ATTR_RW(port);
+
 static struct attribute *eud_attrs[] = {
 	&dev_attr_enable.attr,
+	&dev_attr_port.attr,
 	NULL,
 };
 ATTRIBUTE_GROUPS(eud);
-- 
2.34.1


