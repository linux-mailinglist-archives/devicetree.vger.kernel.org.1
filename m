Return-Path: <devicetree+bounces-264730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPENNN1ZjGm9lQAAu9opvQ
	(envelope-from <devicetree+bounces-264730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:28:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 808B8123530
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFFC0306C470
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B449236998F;
	Wed, 11 Feb 2026 10:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="mxfHft1p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3468536920F
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770805672; cv=none; b=uuIm5xdxoA/j21dvaYwLza2Qi0PaJLnVYAoBLtNc0PwrIjV8+VKrkzLqjoPShB9S+yr8EnolxZxHVMQX63DjVFiQTge5U6JfOb2WAB3dJeSNdm+DEW4PhjpWYDkxYeD8UwVKj2V5/Le/Gasy4kx40dYBxHFxrEXirDYlkT7K+Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770805672; c=relaxed/simple;
	bh=LSS8xHXXjdgfnfg+IhB2Un7XBoJ2Glmk2j5+t+KJVsY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hyNIftEwWiSk7DPn1F5ezj3U3uzRoJecjwLhCDtl9A81ugYcMgz943siBBJmJjAM5TqDRL4T6rKUOdghaXPmAztzOQszESIiIB0ayY4lAdGmpBnVbMfwp7O+erXT6ohCaQFO0gEQd8kOIWqJsl6VnXT06RswP7i1Ea2ELg/HQ0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=mxfHft1p; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b884d5c787bso832979566b.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1770805670; x=1771410470; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HyC/uhMpICBVlM72cJz0mCT/cxqElCQ77i9jCBuDxhs=;
        b=mxfHft1pnSCMmEnx2rfKkZ40Ou8M47QTSCxyLfIcL4hUMVv2JAF2682GzYJVf9A4Uo
         Nek9ydSK8QND0iK1OFc393Mfqh/m8PLRAXUl2XmG+TjNse0YY3/SwuVkKDBIG6ul00Tv
         zgN1hi+js9a1CZHHlfCQLfOjYSil11MImWjIZA6kaNcsge8A0ELdbSk6/hdf5xMQ0QsA
         Ia2PLyBfGgG4lr5KOigzalP4GSmS+fXE2QAVzRF2J9HaPYfEJrrZErdaheU/IbX76bAZ
         AeYjyfcrbv7flX+LsF95xJxS9gB2RQ5sy5VWRF8Re74coDVwRYbsLYonGHeYXF8JHwoq
         zfrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770805670; x=1771410470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HyC/uhMpICBVlM72cJz0mCT/cxqElCQ77i9jCBuDxhs=;
        b=iNugyl7ldEz1bAkS6a///G7bLNNRWz37Z4lKw+APcGuujgPQNZXmTEeMggXqk4Cti+
         s7Kw/2H7yWRmsoy5u/8C78+86Kc1ZEgIsYa6NYeC697WM02bKe/WzKY8vi+CENV8MR6n
         tjdNAm2+0lXXOA67eXfXsNMXIoAGWK0wHWEa8hJXwnTVrFm9ekQDFoi+UZ1sgd1Ip2uP
         7Uuy2QR29hvvKYDudKCJE5hDi8QyzD+FiovN54L9oR495Plm9WRuLSCVOO3iG9/p7frr
         Rd6KlioPE1k+CBu61YW7fqzaRYtzZSnxd89S8u+7H4J4+/FnMPXGOTHPkjwD4zoO99Oq
         MTcA==
X-Forwarded-Encrypted: i=1; AJvYcCWCzmSGBWbeirQPt/2+KYRNm5+AJro8Lj6Rmz4f0CYem9s1qKxZL5qk4u/o/ipd/0eb/GXUXii8snI1@vger.kernel.org
X-Gm-Message-State: AOJu0YyGLcHoM0NLbFuz8b4OIHjaGhRnF0dj1Z5JdE/Zd/wmCCHTZCPW
	vformKUSf+7Yn6ZmN8PJgRQEn9LYV1ca8kE6UYscApW+NLJWrKAa57SwpBGcu2EZwDI=
X-Gm-Gg: AZuq6aJ5TUoAO3GldKJTDEF1XbL7mq1zbrqY2Ax9Vl/Qo1tHe9IbEblapB729D/LXzz
	O8werjYtsJann7csHaZcBLCuOee0+K+RDWA80eYZIqGt9OpRNsDC8JYyT9m6XUaj6FZDaIS/2s3
	ADkfAA3n2S3Ph5axrdowmCxykfT5mT5e+EnABNmY/LQGOo1b9OW2YCA2M0yxgTzBDGrgMXQiPqy
	lmYCFznEe8btHi2M1eSA4msPAaQR1bbkUfg/xfHo+inGk8O2WZJbWmTZtaTuvE8IBqTNEG0JodM
	7tWPDSFt/SKSgLW37EV2LH4AKmlkRDkh5vS5n507Hh3UigiW5WquJpTldMQnx4s7DtHOn3yVkem
	KL775C4vsixelrrR6KHzQLx5G1nbbTiE55RKpx3b+GoVhE+FWi7ezQ6vnyaAoaqxEKDnaUjijNb
	oFf9FyJuWsoH445z66YcyihVIRtv4e/K8FWzb5qozooDwjhaR1e1HgYG/nraERvRJ6NZGq8Otdu
	30z
X-Received: by 2002:a17:907:3e09:b0:b8e:5e2:79fc with SMTP id a640c23a62f3a-b8f6a99e36cmr109556966b.14.1770805669543;
        Wed, 11 Feb 2026 02:27:49 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec54925sm44296266b.53.2026.02.11.02.27.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:27:49 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 11 Feb 2026 11:27:34 +0100
Subject: [PATCH 3/3] ASoC: codecs: aw88261: Add firmware-name support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-aw88261-fwname-v1-3-e24e833a019d@fairphone.com>
References: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
In-Reply-To: <20260211-aw88261-fwname-v1-0-e24e833a019d@fairphone.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Weidong Wang <wangweidong.a@awinic.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Ferrieux <alexandre.ferrieux@orange.com>, 
 Bhushan Shah <bhushan.shah@machinesoul.in>, 
 Bharadwaj Raju <bharadwaj.raju@machinesoul.in>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770805666; l=2022;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=LSS8xHXXjdgfnfg+IhB2Un7XBoJ2Glmk2j5+t+KJVsY=;
 b=DO+9FE4+TyZEMocZyMhfmVlLC5hLI6z/jUitlHfPxB64stboPJ8HugEI1vT1cWUjHvlcbXygw
 et+wFv7LPYXAgfGsKcfhI5Fn+yz3zSOYr8U1/7PEbbh8/ZrtEekiK8t
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264730-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,awinic.com,orange.com,machinesoul.in];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 808B8123530
X-Rspamd-Action: no action

Since the aw88261_acf.bin file appears to be device-specific, add
firmware-name support so that devicetree users can point to a
device-specific path to not conflict with other devices that might also
ship a aw88261_acf.bin.

Read the "firmware-name" property if available, and otherwise fall back
to the generic name.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 sound/soc/codecs/aw88261.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/sound/soc/codecs/aw88261.c b/sound/soc/codecs/aw88261.c
index 43c03d3cb252..02f8c2bb2569 100644
--- a/sound/soc/codecs/aw88261.c
+++ b/sound/soc/codecs/aw88261.c
@@ -1094,17 +1094,22 @@ static int aw88261_dev_init(struct aw88261 *aw88261, struct aw_container *aw_cfg
 static int aw88261_request_firmware_file(struct aw88261 *aw88261)
 {
 	const struct firmware *cont = NULL;
+	const char *fw_name;
 	int ret;
 
 	aw88261->aw_pa->fw_status = AW88261_DEV_FW_FAILED;
 
-	ret = request_firmware(&cont, AW88261_ACF_FILE, aw88261->aw_pa->dev);
+	ret = device_property_read_string(aw88261->aw_pa->dev, "firmware-name", &fw_name);
+	if (ret)
+		fw_name = AW88261_ACF_FILE;
+
+	ret = request_firmware(&cont, fw_name, aw88261->aw_pa->dev);
 	if (ret)
 		return dev_err_probe(aw88261->aw_pa->dev, ret,
-					"load [%s] failed!", AW88261_ACF_FILE);
+					"load [%s] failed!", fw_name);
 
 	dev_info(aw88261->aw_pa->dev, "loaded %s - size: %zu\n",
-			AW88261_ACF_FILE, cont ? cont->size : 0);
+			fw_name, cont ? cont->size : 0);
 
 	aw88261->aw_cfg = devm_kzalloc(aw88261->aw_pa->dev, cont->size + sizeof(int), GFP_KERNEL);
 	if (!aw88261->aw_cfg) {
@@ -1117,7 +1122,7 @@ static int aw88261_request_firmware_file(struct aw88261 *aw88261)
 
 	ret = aw88395_dev_load_acf_check(aw88261->aw_pa, aw88261->aw_cfg);
 	if (ret) {
-		dev_err(aw88261->aw_pa->dev, "load [%s] failed !", AW88261_ACF_FILE);
+		dev_err(aw88261->aw_pa->dev, "load [%s] failed !", fw_name);
 		return ret;
 	}
 

-- 
2.53.0


