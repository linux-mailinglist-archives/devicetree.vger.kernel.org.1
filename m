Return-Path: <devicetree+bounces-267031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id G7xIBgSQmGn9JgMAu9opvQ
	(envelope-from <devicetree+bounces-267031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 17:47:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 014B1169673
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 17:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3C1C03012B40
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6331C2FF67A;
	Fri, 20 Feb 2026 16:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A86aFCGu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C122F6188;
	Fri, 20 Feb 2026 16:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771605988; cv=none; b=CCBxU+d60lrfvk318nXNZXzLb7N7DG8/h+heS/YWN9eGiG0+s6QyvTVypZ0lHpH5Df6fbZfu8Y57jqwelq7X7x6Zz9n56toGsgpUVvhvZubdqv2zPMZoorQLVZEbz/xSCyGQojYy4CKFzkaqfyJORzlkggWxHfTsBj5Uivj9ccw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771605988; c=relaxed/simple;
	bh=5YTkN45Ecj5gyMlFHFchWQf8TOCq8dC82xC3M3uTtlI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gWu3gtyf1pGgNWoYoLN+KcOgD/vAYNxzk6gmtarBKA8tVD1GCbDlcFm3n5c7BlpVvDwrzXBp7pN08jycemolBTqjiZ2tqJ3wGuW4nYv4TMs0QgKI3OBZpNEL0J1L7jBBoHIZ/vB6jOm2tn/0GTkIxC0o30QG8fI73QtZ37xlXy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A86aFCGu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40E7C2BCB0;
	Fri, 20 Feb 2026 16:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771605987;
	bh=5YTkN45Ecj5gyMlFHFchWQf8TOCq8dC82xC3M3uTtlI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=A86aFCGujY66P6yJLrVgM3kDrIJXwOotJSyvFiTbB79Pp48KMkRyMqF4bI7yBo1sP
	 jnQ7QsBEOt+UixLGJRWsnyhUtp9huSidRB5r8xZTV+1KsaQf1YfG8+fSgZ/euCEUxq
	 nyvv+Dfx0Ujx3G1L5f5bJABh3aU4xEcJpOU2ZYB8iuROgBrSSSrH/Hh57U3YjAM0hP
	 n2XeBQI1qdulLuNFfh4/ak93f184eToYBvtlGId8qLPByNiFDZG5X8DIq5MyjPj8+x
	 jjFKOk9SJmatABYEimHOvHXwiae20SyTKtURG9baFm0eJ4vYDlQ+5Phvrzz7LkUkDu
	 ZFNdwA2zLLdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA883C5AD2C;
	Fri, 20 Feb 2026 16:46:27 +0000 (UTC)
From: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Date: Fri, 20 Feb 2026 16:46:08 +0000
Subject: [PATCH RFC 4/8] iio: frequency: ad9910: expose sysclk_frequency
 device attribute
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-ad9910-iio-driver-v1-4-3b264aa48a10@analog.com>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
In-Reply-To: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
To: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Rodrigo Alencar <rodrigo.alencar@analog.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771605986; l=1404;
 i=rodrigo.alencar@analog.com; s=default; h=from:subject:message-id;
 bh=3u3vH6CTF1USbub44V9JoeQJxCYLlIqHrcKGASf1v1Q=;
 b=iDOfa8mp9mZIXa7ZbDGNGhBxsqzthOCKwINnqC2zBsNzPIZC3z6beNB+jIXWPztWvytHIs1Xv
 XfETCKlfGOpCj0+8LIseeJprlX6OthL1X29aWuUOrdtBTwq1to8FSoC
X-Developer-Key: i=rodrigo.alencar@analog.com; a=ed25519;
 pk=ULeHbgU/OYh/PG/4anHDfLgldFItQHAhOktYRVLMFRo=
X-Endpoint-Received: by B4 Relay for rodrigo.alencar@analog.com/default
 with auth_id=561
X-Original-From: Rodrigo Alencar <rodrigo.alencar@analog.com>
Reply-To: rodrigo.alencar@analog.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267031-lists,devicetree=lfdr.de,rodrigo.alencar.analog.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rodrigo.alencar@analog.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,analog.com:mid,analog.com:email,analog.com:replyto]
X-Rspamd-Queue-Id: 014B1169673
X-Rspamd-Action: no action

From: Rodrigo Alencar <rodrigo.alencar@analog.com>

Add read-only sysclk_frequency sysfs attribute. This value is important
for userspace to calculate values to populate the Parallel Port or the
RAM data buffer.

Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
---
 drivers/iio/frequency/ad9910.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/iio/frequency/ad9910.c b/drivers/iio/frequency/ad9910.c
index bb280972e84c..a72e3685f676 100644
--- a/drivers/iio/frequency/ad9910.c
+++ b/drivers/iio/frequency/ad9910.c
@@ -789,10 +789,31 @@ static int ad9910_reg_access(struct iio_dev *indio_dev,
 	return ret;
 }
 
+static ssize_t sysclk_frequency_show(struct device *dev,
+				     struct device_attribute *attr,
+				     char *buf)
+{
+	struct ad9910_state *st = iio_priv(dev_to_iio_dev(dev));
+
+	return sysfs_emit(buf, "%u\n", st->data.sysclk_freq_hz);
+}
+
+static IIO_DEVICE_ATTR_RO(sysclk_frequency, 0);
+
+static struct attribute *ad9910_attrs[] = {
+	&iio_dev_attr_sysclk_frequency.dev_attr.attr,
+	NULL
+};
+
+static const struct attribute_group ad9910_attrs_group = {
+	.attrs = ad9910_attrs,
+};
+
 static const struct iio_info ad9910_info = {
 	.read_raw = ad9910_read_raw,
 	.write_raw = ad9910_write_raw,
 	.write_raw_get_fmt = ad9910_write_raw_get_fmt,
+	.attrs = &ad9910_attrs_group,
 	.debugfs_reg_access = &ad9910_reg_access,
 };
 

-- 
2.43.0



