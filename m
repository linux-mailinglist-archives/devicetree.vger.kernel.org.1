Return-Path: <devicetree+bounces-199497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7078B10EE1
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 17:41:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C543B1D013E7
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 15:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BD42E9748;
	Thu, 24 Jul 2025 15:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H4fXOLa2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57141279917
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 15:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753371667; cv=none; b=PUqeV1Ko/9r9laBntdUwqsgATZ3abRMb2NNWgQ0zYG5Vuc2F2kFvxiBWrRlGQLtQ4VJQ0Q161no4l34Nw3Afvp4/xTF8byJ4K42mz2htSArFS7rfD/juTQdtKZQh2H9waKnVdC1eEdRTnyTroWwkJ1h39ykDrKEZGRRkaf7Jkmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753371667; c=relaxed/simple;
	bh=rL72xLvDpaYB5a3K56U+QX+tDm0UKRXbjJu7lpGADJA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=V2Q1ernvl4a7SQUUTRhxAfj0LcnWAEYKHQ+7gJRSK8udu0CVi59G1yf2OGnI7kcS+fSh9QK6UveqiTnVDRYJ90bWeRX3z5MeVQFgOx8anDPkIQNQu04/sUJO+WhqCEM3bZbEbAY7OuKZx52qDJeAJr0vWWVjIzTNh4atnGzvjVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H4fXOLa2; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45617887276so8024515e9.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753371664; x=1753976464; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ijalKac4tH/bOL3hkdX4ec4lsO5RsEUy1SQ79bJniFw=;
        b=H4fXOLa2L7z4w2CWSCTh7c+w0wpqWUYXBVlunlre/7F9iX/aefEVA6PyBEht1wCa6T
         EYGYyjMXJRU+t2Kti3H9VLa7ebbewV1ZoOFNqlpAH7xpKxno+liAUvG/Tnsamk28LZVF
         FZry65eCK6e9utHQZ9bjdvEFfPyWafUN2nFZ+a1CTQYSnvlamy+dyOdoIIu+JWA5iSE5
         Swdxljkm1kCqC4cKvkL6aPjVGeKbXbTPcYubi6HYQxb+h5ZNefBLJ9oj2O7VdQu9nI9H
         koZwt7Xj/rw6yNjOrG6M17+66L8FWy2Y3ohgbk34sbt1URaBOVd92uCxZRD2thEO5Cdy
         Wigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753371664; x=1753976464;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ijalKac4tH/bOL3hkdX4ec4lsO5RsEUy1SQ79bJniFw=;
        b=F+Dnyf41uHpJddhJNiD1ZW1QhTmwx4XXhx3dI5MU0GNJYgqzT3QR/iB1WvZoOlt0FP
         ZKucVpHOApaGmXHoJ5U3H92Qc1JpIaRs6AjO7Y2lKKVjxFruGKcolLqKEtrfLu0uRdw/
         pW66x2RWNmFsc40fKyrCqQgSgN/FLIiVPlyQnJBwWBpb5XRdfsUpO589HzbjD0eTzLFh
         ALxgQqD5Qn5PCfkiWeOo3C18EnQdjouVxRaffJQ6fpkRP3UWrAqnSecSdmVLndYuUMBY
         ym1K6vceDgRH6WHeWseoRumylzjC9AP+qvCntxbDtwSRsj6nwOgIcdfO8qO4AffgqKi2
         RlVw==
X-Forwarded-Encrypted: i=1; AJvYcCXL2R6qEtvrkiEP2Ay+8MviDdssNMjjdgTTASuup1oZgdmkN8Od/nqy/Bl+p0qEcyjf/PHe62ojb4IM@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr8q7Nv/04NDEB/bHhQMTAmIWH0FbjG3uHdTjnXJKkGAFqk7Az
	bgq/kENMz6FQqw1PM/IniC8dvzvZmcfI9NIYhofGujjhU50gcA8gqnZ9P3+R3HoUI7M=
X-Gm-Gg: ASbGncvs9+cAvwpPXz4UKQqE8DlD77EIJjA52JX6mIS2LnPkgzldGFpPbC7ol74KHYJ
	fI35TS8LKA1OwgJ/fPfrJVm/Q+z/I/QAnl8W6kZcqV7kdPMC6b8O4sK5qqZempD8Tm3Bm+K5/Uh
	ry2Botrb713nHkzu/PUODiDTlbRSrE87m13V0sBtFeHvIxS0lbvigEfIfDPArRb8jbQzlyBWNbf
	cbrvLvNASeKpAHlFdAvFrtu3oPeC9IyDjLSUdse/jpetUmtvgZW+tAfuvV8SoH7nHDdSh9CWZjo
	YFcpw8YyI+w3dk96HGKVUd/pKWRRMcGMJW3GxHoPFWjkEA7go3evzTuIKgp0SJTv1pMBikZuqAk
	FaRzlxBz+lvfVGveo6QX0yLJ7TeGQJe3ZCZguIg==
X-Google-Smtp-Source: AGHT+IH+Kt4CbvgwU5Pt6jGjtNicK9BRckQRniUA+bTcD0KYObJ3m+6Ey87TiLjq1ghjyaSgL9Tpdg==
X-Received: by 2002:a05:600c:8905:b0:456:19eb:2e09 with SMTP id 5b1f17b1804b1-4586954d51bmr52814455e9.8.1753371663558;
        Thu, 24 Jul 2025 08:41:03 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45870553d72sm24018765e9.16.2025.07.24.08.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 08:41:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 24 Jul 2025 16:41:02 +0100
Message-Id: <DBKEDPOEQHOJ.2DA0F5PUZGCJO@linaro.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Stephen Boyd" <sboyd@kernel.org>, "Lee
 Jones" <lee@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Srinivas Kandagatla"
 <srinivas.kandagatla@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] ASoC: codecs: add new pm4125 audio codec driver
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250711-pm4125_audio_codec_v1-v2-0-13e6f835677a@linaro.org>
 <20250711-pm4125_audio_codec_v1-v2-2-13e6f835677a@linaro.org>
 <20250711-hungry-uppish-taipan-a0a35a@krzk-bin>
In-Reply-To: <20250711-hungry-uppish-taipan-a0a35a@krzk-bin>

On Fri Jul 11, 2025 at 9:29 AM BST, Krzysztof Kozlowski wrote:
> On Fri, Jul 11, 2025 at 04:00:11AM +0100, Alexey Klimov wrote:
>> +static void pm4125_unbind(struct device *dev)
>> +{
>> +	struct pm4125_priv *pm4125 =3D dev_get_drvdata(dev);
>> +
>> +	snd_soc_unregister_component(dev);
>> +	device_link_remove(dev, pm4125->txdev);
>> +	device_link_remove(dev, pm4125->rxdev);
>> +	device_link_remove(pm4125->rxdev, pm4125->txdev);
>> +	component_unbind_all(dev, pm4125);
>> +}
>> +
>> +static const struct component_master_ops pm4125_comp_ops =3D {
>> +	.bind =3D pm4125_bind,
>> +	.unbind =3D pm4125_unbind,
>> +};
>> +
>> +static int pm4125_add_slave_components(struct pm4125_priv *pm4125, stru=
ct device *dev,
>> +				       struct component_match **matchptr)
>> +{
>> +	struct device_node *np =3D dev->of_node;
>> +
>> +	pm4125->rxnode =3D of_parse_phandle(np, "qcom,rx-device", 0);
>> +	if (!pm4125->rxnode)
>> +		return dev_err_probe(dev, -ENODEV, "Couldn't parse phandle to qcom,rx=
-device\n");
>> +	component_match_add_release(dev, matchptr, component_release_of, compo=
nent_compare_of,
>> +				    pm4125->rxnode);
>> +	of_node_put(pm4125->rxnode);
>
> If you drop it here, then you do not need to keep it in pm4125 in the
> first place. But this will point you to the problem - what if
> pm4125_bind() is called after you dropped the reference?

So I guess the right place is in pm4125_remove() right after
component_master_del()?

>> +
>> +	pm4125->txnode =3D of_parse_phandle(np, "qcom,tx-device", 0);
>> +	if (!pm4125->txnode)
>> +		return dev_err_probe(dev, -ENODEV, "Couldn't parse phandle to qcom,tx=
-device\n");
>> +	component_match_add_release(dev, matchptr, component_release_of, compo=
nent_compare_of,
>> +				    pm4125->txnode);
>> +	of_node_put(pm4125->txnode);
>
> Same problem here.

Thank you,
Alexey


