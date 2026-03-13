Return-Path: <devicetree+bounces-274936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM4PIQq5s2nbaAAAu9opvQ
	(envelope-from <devicetree+bounces-274936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:13:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC97527E9A8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 162733190988
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5EB336AB4F;
	Fri, 13 Mar 2026 07:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VtQZISQ4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MzokFzfU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124E6366DA5
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773385745; cv=none; b=eNIW5Kpybqcn0CeI2doapd1L1SXZI5KKEJdhcybjisnI2LMN9gsb98t6Ln/AxNgdcDWKMGMPPRf/3fJ+Ee0QnQvb2f147Tsgdh+EcxXrmYwJK7unj/gXg54PPeRBWRWaZYUFgOCZdkSWVDFHrK092kTv3vP3Dzbyupo8hI8nI+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773385745; c=relaxed/simple;
	bh=rZiOZBnfnYQhiYHGIxAvJ9diYifTV8qWwPU2z0ofvp8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sFk/x5WtmxA2yk8xHfkfF+0NZHTwvQnuWKU/FBECvAv92SUqkoljcSEvQfWlikZGFhbtat7eEwe3jfA1kwheVjAs3NAcxKjovMOvqrf732vg34f7ZzRxzLsBMAE2sVPx8+qpCNZ7OWWplBIHEHYs1Jc1xmc1yWpJsfX+fpdOULs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VtQZISQ4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MzokFzfU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tdFl3229896
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:09:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vcScscqC6ncRDOFK8ujM+tWz/LTHnr7UQ8J+Pxb8j2M=; b=VtQZISQ4gXif4eDM
	f+9MBd27EG8icye0NwvCDGtfeiTqdpiNWJOYCUp7SPKQ6vVIG1K8wx/DJFsNH3Ha
	SUaTCM7ZGEQSt5PlCbDdMyjcT6kHxBq9ZCOsVTXOkOmsl9QA5n32ndJPTnH8sVGf
	Dx6ExBfVyWgS+SwRm4Zbep5GPcAABzlu/WiA2kKv3JTTc45LQ9uDMpW7Dy9ODPvK
	0eldBnWNhzlj5qlq9OniUuY+jczVDFqXkaRpFpIITJh5HPKSfG+63XWuBE4iKyMh
	IVH+3QPVrQu/m5WZKs0xBmJZjT/18lyl3pkQOP8bV0YU6bRuBu9zktQ5K/5Purxu
	w1t8kg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cv8n7gynh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:09:00 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-829bf6406ecso6020548b3a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773385739; x=1773990539; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vcScscqC6ncRDOFK8ujM+tWz/LTHnr7UQ8J+Pxb8j2M=;
        b=MzokFzfUXe0xrIz7ZO3lVTuk/B75C3RZWLD9Wy/nzyeSLSGCeHmLOM16viVJyxgiCx
         TrHf3lW5l71JkqcWpxUih4xQEpYO6m362UrXkU3b+gCzls7Zfa1wGaCy0/J6OZea+Dyg
         0KaNZ1vohu1wgTBjivEWY7/9yKTAtu3z6wWHHPwWvVPOffVuoeTmpHxUCnxDGzH0Umjn
         v/Fp2n3tSKeJgKIMfsmBB1cHJ2WPjxm0w5lh1t9PL4kpW2uarsL6BC+tRwrKvEGd8+vI
         YV5vAwdqYlMKa8L76mDQpi+XfbZBmfaY85P6QNd0jMPj3N11LjZuo+Qmj/Dn7p6bTGkV
         LVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773385739; x=1773990539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vcScscqC6ncRDOFK8ujM+tWz/LTHnr7UQ8J+Pxb8j2M=;
        b=cKnrnHyI06xLy9vBhEQaidvrp6RMyLdWgiCMjQ0yxP093BCHbPLpB8fB74CZHGlRmj
         rV8Jt/7zW9L969evf11Zz1puMVmWuRzRy5QD+BJTxIbjYGgi63O2/oIcYuDHFvX7BYQD
         G0OyMXVIJ5V1huegFfmdTIFvQswS0V+ka9nmXvboMeo3Dr3COPoIzxdo1fTs9HOiFv2C
         2L8lij/wI8VaFShfA8EE4Bj6g9ZQ0FlZc2uhDRb1YW/zMGJIg9/MI4Iw0b7ZNSu19343
         Vjx16ay9PCZvyVtWxoWt/z4cV/sfVqpCNlVUzXUcgehOZLe2lnZG3ycoSQjQC7FgvIAL
         yVrg==
X-Forwarded-Encrypted: i=1; AJvYcCU8hXp6caBNoJaIw4CEhmSItoll/UNhLcPztTmLYrwmDJ50SmQnocFwFKYh6nE1vIOAKWE0VgGUu7VK@vger.kernel.org
X-Gm-Message-State: AOJu0YyQmnqEQoyTb4yYZxR0Q5iMRvuT3qIa6GgmKXDBnKzR7RTw6Rbj
	7aNiIvpoB9vcCaeU20RBA5pwzlIwHhsgcIojDS3tBfTiPTQf6lQq/Z4P8dyvgFkpsSbDZBpRBnO
	J6L82J7Si8zQ0p3/kJQaDGtCKOhn8YTxM9o007l7cQl7i36gCMdnBi6uPdf8Om7eg
X-Gm-Gg: ATEYQzwFCF70jRQhOqcV+k1ion9cW5wRmA0VOoWuOa43TO2k5HmJNrG3Lbv51tfpTwO
	OkbC+bsQZv8MiChp6D4ArgMjosgA9m7MsXVQ6iqpmOh/MNBnYP6qGpqrG5i9jeMpK4tRkeirgy2
	OlPUsfhgBEmrl8U63BxqXxM47V+UT6ckDktluhwGTMxvxGKrM3B7XM3Gp/WsDceLFPAafSxH/WA
	Y5TOLSlZfOwcVbCp9iCNHmVzDutbBqULG7cnqBGXkwUVFqyU98R3yunvVKLBpQ0E9+5EfjblNpH
	wkp4zxQwMs52Xygq993qmnQDoIa1IDGQL05aSYxcD2nEN1STeY6D+H5D6LSfCIdmDr35PwS6PPS
	UpkFmP+jeljFLbVo6MTNxJFHOYRyfAzmtKblR/Z+8g4V/zkZPwIfkgMP/
X-Received: by 2002:a05:6a00:2d0b:b0:829:7553:afbe with SMTP id d2e1a72fcca58-82a19952539mr1970547b3a.57.1773385738492;
        Fri, 13 Mar 2026 00:08:58 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d0b:b0:829:7553:afbe with SMTP id d2e1a72fcca58-82a19952539mr1970522b3a.57.1773385738021;
        Fri, 13 Mar 2026 00:08:58 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07340518sm5148536b3a.34.2026.03.13.00.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 00:08:57 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 12:38:40 +0530
Subject: [PATCH v8 1/3] PM: sleep: wakeirq: Add support for dedicated
 shared wake IRQ setup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-wakeirq_support-v8-1-48a0a702518a@oss.qualcomm.com>
References: <20260313-wakeirq_support-v8-0-48a0a702518a@oss.qualcomm.com>
In-Reply-To: <20260313-wakeirq_support-v8-0-48a0a702518a@oss.qualcomm.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>,
        Pavel Machek <pavel@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Danilo Krummrich <dakr@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, Linus Walleij <linusw@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
        quic_vbadigan@quicinc.com, sherry.sun@nxp.com,
        driver-core@lists.linux.dev, devicetree@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773385725; l=4919;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=rZiOZBnfnYQhiYHGIxAvJ9diYifTV8qWwPU2z0ofvp8=;
 b=sK1VrvyBMnRqI17H0rZDdjGA2MW67ilKN3wCvOiI+I1r7BhnpKu8+OppiMuh1kfZPziuvlf4j
 840DYh/TkB1CtDnzPkpYqpPHl5+uafsLEr8iVy+8k4GhAvdc4Fm88jV
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: sKrtlCIpdoX_TmY6mx02167dKPETxIpn
X-Proofpoint-GUID: sKrtlCIpdoX_TmY6mx02167dKPETxIpn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA1NiBTYWx0ZWRfX1jgAHu0MpSqQ
 Bde2LjCr2oKs94nyxtrmHIdGAdmGm45X0QcNNRQLSiN56DjcAsixxIBGctKl6XiAEGX/XGF9PKF
 osO9pm0jakzt44hluyR3oytl/ptWy1ZRn46+yx1ZeoxkDg+4f1OBZZVwkWaKWIrUeGg8ovAe7es
 VywRQzVDKJTE4L4cuoy5Si5WzQU+Mb8OoZ6g2Pjcex0uWH4NhNWWuYZG+COquBazgC1ikqm5ZFq
 /KYBJsT2Mz3/fFOs9ibDQgEQJOggznpZqr9ilJwSwxXrfRh0LTmvwwm+DKHMO7Kb15zhBWGzWSr
 RJ6pcNQHEUb8V4JRsvbx1Vg53b/OuMxbC9uQjkqaSB3Qq9Pb++xYo+kcSF1Wcs4lxvwVYtXUmW7
 i+770yH3+tXP4NwrPH37U0Dn0Ju8VIQnaLNwHJ6ouGcpTdS+AVltaRqhNSn9jSGp1Pe9DbCm2+y
 b3x8sjZZQWmc2OU298w==
X-Authority-Analysis: v=2.4 cv=CpCys34D c=1 sm=1 tr=0 ts=69b3b80c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=GqrSgIjjxmp09zFQf4gA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130056
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-274936-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishna.chundru@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DC97527E9A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some devices require more flexibility when configuring their dedicated
wake-up interrupts, such as support for IRQF_SHARED or other IRQ flags.
This is particularly useful in PCIe systems where multiple endpoints
(e.g., Wi-Fi and Bluetooth controllers) share a common WAKE# signal
line which requests platform to re-establish power and reference clocks
to the components. In such cases, drivers can use this new API
dev_pm_set_dedicated_shared_wake_irq() to register a shared wake IRQ.

Update the internal helper __dev_pm_set_dedicated_wake_irq() to accept an
irq_flags argument. Modify the existing dev_pm_set_dedicated_wake_irq()
and dev_pm_set_dedicated_wake_irq_reverse() to preserve current behavior.

When IRQ registered with IRQF_SHARED we can't use IRQF_NO_AUTOEN flag,
so after registering for irq, disable it explicitly.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Acked-by: Rafael J. Wysocki (Intel) <rafael@kernel.org>
---
 drivers/base/power/wakeirq.c | 39 ++++++++++++++++++++++++++++++++++-----
 include/linux/pm_wakeirq.h   |  6 ++++++
 2 files changed, 40 insertions(+), 5 deletions(-)

diff --git a/drivers/base/power/wakeirq.c b/drivers/base/power/wakeirq.c
index ad23f0fa5d1a5a9eb49b1af2288ee4908082b13e..b7b106f55559a7c85cb35d9e5ed22fe37970662d 100644
--- a/drivers/base/power/wakeirq.c
+++ b/drivers/base/power/wakeirq.c
@@ -171,7 +171,8 @@ static irqreturn_t handle_threaded_wake_irq(int irq, void *_wirq)
 	return IRQ_HANDLED;
 }
 
-static int __dev_pm_set_dedicated_wake_irq(struct device *dev, int irq, unsigned int flag)
+static int __dev_pm_set_dedicated_wake_irq(struct device *dev, int irq, unsigned int flag,
+					   unsigned int irq_flags)
 {
 	struct wake_irq *wirq;
 	int err;
@@ -200,8 +201,7 @@ static int __dev_pm_set_dedicated_wake_irq(struct device *dev, int irq, unsigned
 	 * so we use a threaded irq.
 	 */
 	err = request_threaded_irq(irq, NULL, handle_threaded_wake_irq,
-				   IRQF_ONESHOT | IRQF_NO_AUTOEN,
-				   wirq->name, wirq);
+				   IRQF_ONESHOT | irq_flags, wirq->name, wirq);
 	if (err)
 		goto err_free_name;
 
@@ -237,7 +237,7 @@ static int __dev_pm_set_dedicated_wake_irq(struct device *dev, int irq, unsigned
  */
 int dev_pm_set_dedicated_wake_irq(struct device *dev, int irq)
 {
-	return __dev_pm_set_dedicated_wake_irq(dev, irq, 0);
+	return __dev_pm_set_dedicated_wake_irq(dev, irq, 0, IRQF_NO_AUTOEN);
 }
 EXPORT_SYMBOL_GPL(dev_pm_set_dedicated_wake_irq);
 
@@ -258,10 +258,39 @@ EXPORT_SYMBOL_GPL(dev_pm_set_dedicated_wake_irq);
  */
 int dev_pm_set_dedicated_wake_irq_reverse(struct device *dev, int irq)
 {
-	return __dev_pm_set_dedicated_wake_irq(dev, irq, WAKE_IRQ_DEDICATED_REVERSE);
+	return __dev_pm_set_dedicated_wake_irq(dev, irq, WAKE_IRQ_DEDICATED_REVERSE,
+					       IRQF_NO_AUTOEN);
 }
 EXPORT_SYMBOL_GPL(dev_pm_set_dedicated_wake_irq_reverse);
 
+/**
+ * dev_pm_set_dedicated_shared_wake_irq - Request a dedicated shared wake-up interrupt
+ * @dev: Device entry
+ * @irq: Device wake-up interrupt
+ * @flags: Custom IRQ flags (e.g., IRQ_TYPE_EDGE_FALLING)
+ *
+ * This API sets up a threaded interrupt handler for a device that has
+ * a shared wake-up interrupt in addition to the device IO interrupt. It also
+ * sets IRQ flags like IRQ_TYPE_EDGE_FALLING passed by the caller.
+ *
+ * Returns 0 on success or a negative error code on failure.
+ */
+int dev_pm_set_dedicated_shared_wake_irq(struct device *dev, int irq, unsigned long flags)
+{
+	struct wake_irq *wirq;
+	int ret;
+
+	ret =  __dev_pm_set_dedicated_wake_irq(dev, irq, 0, IRQF_SHARED | flags);
+	if (ret)
+		return ret;
+
+	wirq = dev->power.wakeirq;
+	disable_irq_nosync(wirq->irq);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dev_pm_set_dedicated_shared_wake_irq);
+
 /**
  * dev_pm_enable_wake_irq_check - Checks and enables wake-up interrupt
  * @dev: Device
diff --git a/include/linux/pm_wakeirq.h b/include/linux/pm_wakeirq.h
index 25b63ed51b765c2c6919f259668a12675330835e..61f1e840745b56baa57db37563e450cb2d757a85 100644
--- a/include/linux/pm_wakeirq.h
+++ b/include/linux/pm_wakeirq.h
@@ -11,6 +11,7 @@ extern int dev_pm_set_dedicated_wake_irq(struct device *dev, int irq);
 extern int dev_pm_set_dedicated_wake_irq_reverse(struct device *dev, int irq);
 extern void dev_pm_clear_wake_irq(struct device *dev);
 extern int devm_pm_set_wake_irq(struct device *dev, int irq);
+extern int dev_pm_set_dedicated_shared_wake_irq(struct device *dev, int irq, unsigned long flags);
 
 #else	/* !CONFIG_PM */
 
@@ -38,5 +39,10 @@ static inline int devm_pm_set_wake_irq(struct device *dev, int irq)
 	return 0;
 }
 
+static inline int dev_pm_set_dedicated_shared_wake_irq(struct device *dev,
+						       int irq, unsigned long flags)
+{
+	return 0;
+}
 #endif	/* CONFIG_PM */
 #endif	/* _LINUX_PM_WAKEIRQ_H */

-- 
2.34.1


