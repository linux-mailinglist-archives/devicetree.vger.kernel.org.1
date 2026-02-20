Return-Path: <devicetree+bounces-267034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMjiFVqQmGnjJgMAu9opvQ
	(envelope-from <devicetree+bounces-267034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 17:48:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B6F169715
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 17:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D6563065851
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3A34305046;
	Fri, 20 Feb 2026 16:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwzkMNGT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7E22FF641;
	Fri, 20 Feb 2026 16:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771605988; cv=none; b=ofplD7aLdl1id3MS2W8d5FxraRkeHMgJZSgH+S84SQVGk+yB2RJbntCeE3+gcRRP+w+6amGEmyRJ59Ve4dQtImVAI0Qxwjb2cQID4EZKjWb76Ud/0AZ/EswmPlZxccwqD0ayDEupYLs5XoJYvVbhlR9zvNvdyJWd3bJ6u8qmmdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771605988; c=relaxed/simple;
	bh=66S/3dHCal6dQuZeH2WCVD4Wt7NAb3fiSPC3kcxdERw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fyj+N/1WSp+H+iAFppApjh9+XIVBoftTc6ZKBzRM2KNLSpl/4OH+xjc5PGbMxbBamPMXtdk92IYYg5+ij8cSAX1ezkaflH6aMjLyaSN+BT9JsHoPfJq3f8mcoDIzBEv2FAVGmjr6CZuvkye9b0uKKuQkOmhVqiQvy/I055sT3CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwzkMNGT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25FB7C19425;
	Fri, 20 Feb 2026 16:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771605988;
	bh=66S/3dHCal6dQuZeH2WCVD4Wt7NAb3fiSPC3kcxdERw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=WwzkMNGT78L/wv3+TyDVm3ffRW7MsxFlZ2oYpS6zA+tKDYFx0trAM1F1jjn2ZmLGn
	 BUm2WwOD7VXFZcUbU4bR4SCfIMUQgEOj8vwGqhqUMO+BA5iHn1bFb2sxGQMHqUv+cq
	 0jPaa4X6VKMvSNbFE2pUyP/tpLajvuAFq8gkSs6EecrNMDD31RyidInxIyzAtoOX1T
	 xeyq/MldVPeRNbJLyOwjLPPxUxP7L7yMsEiDcwVP2Vpw1ULUjeZ+dn6KWbvIyULiEk
	 yiNbZcPfbkGdpn2aFGUEM/ogRqlhwdjbMtCURKla8BAZuQnjC9RNzPBIGl1IAHVWe/
	 F9Q6jjm44al7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19390C5ACD3;
	Fri, 20 Feb 2026 16:46:28 +0000 (UTC)
From: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Date: Fri, 20 Feb 2026 16:46:11 +0000
Subject: [PATCH RFC 7/8] iio: frequency: ad9910: add output shift keying
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-ad9910-iio-driver-v1-7-3b264aa48a10@analog.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771605986; l=8106;
 i=rodrigo.alencar@analog.com; s=default; h=from:subject:message-id;
 bh=OhIk+av1p8HCXxsb5d7GcpUKKkjp1UH2L+GCFadESMQ=;
 b=i3OKD9TmkUNQdSTmJyqNiGktuMl+O+/tODsf38UqR9d4pEVJBgwH20Lr/26P638ClEwC2sx2B
 6VsRhzJNHGQDaF3exJQi01mJgU4nFc/KtZNayreKw4xSmZcawXyPQ5Q
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267034-lists,devicetree=lfdr.de,rodrigo.alencar.analog.com];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:mid,analog.com:email,analog.com:replyto]
X-Rspamd-Queue-Id: E8B6F169715
X-Rspamd-Action: no action

From: Rodrigo Alencar <rodrigo.alencar@analog.com>

Add OSK channel with amplitude envelope control capabilities:
- OSK enable/disable via IIO_CHAN_INFO_ENABLE;
- Amplitude ramp rate control via IIO_CHAN_INFO_SAMP_FREQ;
- Amplitude scale readback via IIO_CHAN_INFO_SCALE (ASF register);
- Manual/external pin control via pinctrl_en ext_info attribute;
- Automatic OSK step size configuration via scale_increment ext_info;
  attribute with selectable step sizes (61, 122, 244, 488 micro-units)

The ASF register is initialized with a default amplitude ramp rate during
device setup to ensure valid SAMP_FREQ readback.

Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
---
 drivers/iio/frequency/ad9910.c | 134 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 134 insertions(+)

diff --git a/drivers/iio/frequency/ad9910.c b/drivers/iio/frequency/ad9910.c
index 8fd7ebe7e6b0..b1540b157a0e 100644
--- a/drivers/iio/frequency/ad9910.c
+++ b/drivers/iio/frequency/ad9910.c
@@ -226,6 +226,7 @@ enum ad9910_channel {
 	AD9910_CHANNEL_PARALLEL_PORT,
 	AD9910_CHANNEL_DRG,
 	AD9910_CHANNEL_RAM,
+	AD9910_CHANNEL_OSK,
 };
 
 /**
@@ -297,6 +298,8 @@ enum {
 	AD9910_DRG_DEC_STEP_RATE,
 	AD9910_RAM_START_ADDR,
 	AD9910_RAM_END_ADDR,
+	AD9910_OSK_MANUAL_EXTCTL,
+	AD9910_OSK_AUTO_STEP,
 };
 
 struct ad9910_data {
@@ -389,6 +392,10 @@ static const char * const ad9910_ram_oper_mode_str[] = {
 	[AD9910_RAM_MODE_SEQ_CONT] = "sequenced_continuous",
 };
 
+static const u16 ad9910_osk_ustep[] = {
+	0, 61, 122, 244, 488,
+};
+
 /**
  * ad9910_rational_scale() - Perform scaling of input given a reference.
  * @input: The input value to be scaled.
@@ -716,6 +723,10 @@ static ssize_t ad9910_ext_info_read(struct iio_dev *indio_dev,
 			val = FIELD_GET(AD9910_PROFILE_RAM_END_ADDR_MSK,
 					st->reg_profile[st->profile]);
 		break;
+	case AD9910_OSK_MANUAL_EXTCTL:
+		val = FIELD_GET(AD9910_CFR1_OSK_MANUAL_EXT_CTL_MSK,
+				st->reg[AD9910_REG_CFR1].val32);
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -787,6 +798,12 @@ static ssize_t ad9910_ext_info_write(struct iio_dev *indio_dev,
 		FIELD_MODIFY(AD9910_PROFILE_RAM_END_ADDR_MSK,
 			     &st->reg_profile[st->profile], val32);
 		break;
+	case AD9910_OSK_MANUAL_EXTCTL:
+		val32 = val32 ? AD9910_CFR1_OSK_MANUAL_EXT_CTL_MSK : 0;
+		ret = ad9910_reg32_update(st, AD9910_REG_CFR1,
+					  AD9910_CFR1_OSK_MANUAL_EXT_CTL_MSK,
+					  val32, true);
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -1144,6 +1161,80 @@ static ssize_t ad9910_drg_attrs_write(struct iio_dev *indio_dev,
 	return ret ?: len;
 }
 
+static ssize_t ad9910_osk_attrs_read(struct iio_dev *indio_dev,
+				     uintptr_t private,
+				     const struct iio_chan_spec *chan,
+				     char *buf)
+{
+	struct ad9910_state *st = iio_priv(indio_dev);
+	int vals[2];
+	bool auto_en;
+	u32 raw_val;
+
+	guard(mutex)(&st->lock);
+
+	switch (private) {
+	case AD9910_OSK_AUTO_STEP:
+		auto_en = FIELD_GET(AD9910_CFR1_SELECT_AUTO_OSK_MSK,
+				    st->reg[AD9910_REG_CFR1].val32);
+		raw_val = FIELD_GET(AD9910_ASF_STEP_SIZE_MSK,
+				    st->reg[AD9910_REG_ASF].val32);
+		vals[0] = 0;
+		vals[1] = auto_en ? ad9910_osk_ustep[raw_val + 1] : 0;
+
+		return iio_format_value(buf, IIO_VAL_INT_PLUS_MICRO, 2, vals);
+	default:
+		return -EINVAL;
+	}
+}
+
+static ssize_t ad9910_osk_attrs_write(struct iio_dev *indio_dev,
+				      uintptr_t private,
+				      const struct iio_chan_spec *chan,
+				      const char *buf, size_t len)
+{
+	struct ad9910_state *st = iio_priv(indio_dev);
+	int val, val2;
+	int ret;
+	u32 raw_val;
+
+	ret = iio_str_to_fixpoint(buf, MICRO / 10, &val, &val2);
+	if (ret)
+		return ret;
+
+	guard(mutex)(&st->lock);
+
+	switch (private) {
+	case AD9910_OSK_AUTO_STEP:
+		if (val != 0)
+			return -EINVAL;
+
+		raw_val = find_closest(val2, ad9910_osk_ustep,
+				       ARRAY_SIZE(ad9910_osk_ustep));
+		if (raw_val) {
+			/* set OSK step and get automatic OSK enabled */
+			raw_val = FIELD_PREP(AD9910_ASF_STEP_SIZE_MSK,
+					     raw_val - 1);
+			ret = ad9910_reg32_update(st, AD9910_REG_ASF,
+						  AD9910_ASF_STEP_SIZE_MSK,
+						  raw_val, true);
+			if (ret)
+				return ret;
+
+			raw_val = AD9910_CFR1_SELECT_AUTO_OSK_MSK;
+		}
+
+		ret = ad9910_reg32_update(st, AD9910_REG_CFR1,
+					  AD9910_CFR1_SELECT_AUTO_OSK_MSK,
+					  raw_val, true);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return ret ?: len;
+}
+
 #define AD9910_EXT_INFO_TMPL(_name, _ident, _shared, _fn_desc) { \
 	.name = _name, \
 	.read = ad9910_ ## _fn_desc ## _read, \
@@ -1164,6 +1255,9 @@ static ssize_t ad9910_drg_attrs_write(struct iio_dev *indio_dev,
 #define AD9910_DRG_EXT_INFO(_name, _ident) \
 	AD9910_EXT_INFO_TMPL(_name, _ident, IIO_SEPARATE, drg_attrs)
 
+#define AD9910_OSK_EXT_INFO(_name, _ident) \
+	AD9910_EXT_INFO_TMPL(_name, _ident, IIO_SEPARATE, osk_attrs)
+
 static const struct iio_enum ad9910_drg_destination_enum = {
 	.items = ad9910_destination_str,
 	.num_items = AD9910_DRG_DEST_NUM,
@@ -1238,6 +1332,12 @@ static const struct iio_chan_spec_ext_info ad9910_ram_ext_info[] = {
 	{ },
 };
 
+static const struct iio_chan_spec_ext_info ad9910_osk_ext_info[] = {
+	AD9910_EXT_INFO("pinctrl_en", AD9910_OSK_MANUAL_EXTCTL, IIO_SEPARATE),
+	AD9910_OSK_EXT_INFO("scale_increment", AD9910_OSK_AUTO_STEP),
+	{ },
+};
+
 static const struct iio_chan_spec ad9910_channels[] = {
 	[AD9910_CHANNEL_SINGLE_TONE] = {
 		.type = IIO_ALTVOLTAGE,
@@ -1279,6 +1379,17 @@ static const struct iio_chan_spec ad9910_channels[] = {
 				      BIT(IIO_CHAN_INFO_SAMP_FREQ),
 		.ext_info = ad9910_ram_ext_info,
 	},
+	[AD9910_CHANNEL_OSK] = {
+		.type = IIO_ALTVOLTAGE,
+		.indexed = 1,
+		.output = 1,
+		.channel = AD9910_CHANNEL_OSK,
+		.scan_index = -1,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_ENABLE) |
+				      BIT(IIO_CHAN_INFO_SCALE) |
+				      BIT(IIO_CHAN_INFO_SAMP_FREQ),
+		.ext_info = ad9910_osk_ext_info,
+	},
 };
 
 static int ad9910_read_raw(struct iio_dev *indio_dev,
@@ -1308,6 +1419,10 @@ static int ad9910_read_raw(struct iio_dev *indio_dev,
 		case AD9910_CHANNEL_RAM:
 			*val = ram_en;
 			break;
+		case AD9910_CHANNEL_OSK:
+			*val = FIELD_GET(AD9910_CFR1_OSK_ENABLE_MSK,
+					 st->reg[AD9910_REG_CFR1].val32);
+			break;
 		default:
 			return -EINVAL;
 		}
@@ -1367,6 +1482,10 @@ static int ad9910_read_raw(struct iio_dev *indio_dev,
 				tmp32 = FIELD_GET(AD9910_PROFILE_RAM_STEP_RATE_MSK,
 						  st->reg_profile[st->profile]);
 			break;
+		case AD9910_CHANNEL_OSK:
+			tmp32 = FIELD_GET(AD9910_ASF_RAMP_RATE_MSK,
+					  st->reg[AD9910_REG_ASF].val32);
+			break;
 		default:
 			return -EINVAL;
 		}
@@ -1430,6 +1549,11 @@ static int ad9910_write_raw(struct iio_dev *indio_dev,
 			return ad9910_reg32_update(st, AD9910_REG_CFR1,
 						   AD9910_CFR1_RAM_ENABLE_MSK,
 						   tmp32, true);
+		case AD9910_CHANNEL_OSK:
+			tmp32 = FIELD_PREP(AD9910_CFR1_OSK_ENABLE_MSK, val);
+			return ad9910_reg32_update(st, AD9910_REG_CFR1,
+						   AD9910_CFR1_OSK_ENABLE_MSK,
+						   tmp32, true);
 		default:
 			return -EINVAL;
 		}
@@ -1514,6 +1638,11 @@ static int ad9910_write_raw(struct iio_dev *indio_dev,
 			FIELD_MODIFY(AD9910_PROFILE_RAM_STEP_RATE_MSK,
 				     &st->reg_profile[st->profile], tmp32);
 			break;
+		case AD9910_CHANNEL_OSK:
+			return ad9910_reg32_update(st, AD9910_REG_ASF,
+						   AD9910_ASF_RAMP_RATE_MSK,
+						   FIELD_PREP(AD9910_ASF_RAMP_RATE_MSK, tmp32),
+						   true);
 		default:
 			return -EINVAL;
 		}
@@ -1849,6 +1978,11 @@ static int ad9910_setup(struct ad9910_state *st, struct reset_control *dev_rst)
 		return ret;
 
 	/* configure step rate with default values */
+	reg32 = FIELD_PREP(AD9910_ASF_RAMP_RATE_MSK, 1);
+	ret = ad9910_reg32_write(st, AD9910_REG_ASF, reg32, false);
+	if (ret)
+		return ret;
+
 	reg32 = FIELD_PREP(AD9910_DRG_RATE_DEC_MSK, 1) |
 		FIELD_PREP(AD9910_DRG_RATE_INC_MSK, 1);
 	ret = ad9910_reg32_write(st, AD9910_REG_DRG_RATE, reg32, false);

-- 
2.43.0



