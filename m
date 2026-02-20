Return-Path: <devicetree+bounces-267022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENcQMICCmGlMJQMAu9opvQ
	(envelope-from <devicetree+bounces-267022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:49:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE672169095
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:49:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84903300A660
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D587E34DCDF;
	Fri, 20 Feb 2026 15:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T8/qI17p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F19334D91F
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 15:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771602555; cv=none; b=uoRdRyKDEZx0V6w9/MsaIyWZaK17WgUHrEpFvN4JUiEkDSXeT8vdTHsmgQVT1N2aKMkljLU+7uhYAhOekJIws49hSEebRuqm90BXO+ae5RUowJIGRYc7thKuFnKONS4qoVvg3MbSud8nBvE74jxngMu4ss341Pkn73QserlJOro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771602555; c=relaxed/simple;
	bh=DbCNPocwG0B6Nz6qRLmSK5WUNAykh43JJ00fyZd1XqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JRE/Xw9UhdgTx5uLr/mAZkEAVHFnHZN95x3w4qQCb8u/OVNWvNeK4l7HKg0ejj8prctfkGKNnJ3ytnM8eIIZ599/rEfDxUwGzqE9XHboAC2tgIP7kXw7gyQON8S78OCF1W2r87d802it+/akkJ/CRwlkD0MaqiCBO3m75HeglB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T8/qI17p; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-5069df1de6fso19414921cf.3
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771602553; x=1772207353; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z6LoJ75EgE4N9tYxSOxvVmCDYlAbN9HmsVc+u6xnBeI=;
        b=T8/qI17peIPoroe6st7InwPQhOm6akjZrlicBzAxC0MaZZD6DhR8+VP1S0Mm5tDt6u
         XAIIZoPFjYpgg9Dd/egpT3pHQySeSETiZYb4qQZtTW/Ao+mH9bKd17BMtmIz0XDZGmMt
         L4t8h23vx81EIAhYPHZKz5Xg89IpU1CtnKZ9dz34Cq+L+JZ326w65txOCDxqk1zkugxv
         Nml++9cTFGxJLI0+VEiQzNfprx7jgU+ACYA8nHA31fhyamxXUJ6T4OOb8uBjK1n3w0Ab
         wxvE3WMVFm40RX99o2Yze4+Nr1sK6wm7iujcAoXu6/Hec2FFsGhgGBPuuRNn18ptpLqi
         vOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771602553; x=1772207353;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z6LoJ75EgE4N9tYxSOxvVmCDYlAbN9HmsVc+u6xnBeI=;
        b=U1/Rwnd5W7oWVnjgNhmyQEZouwwHRrlASrsw4PhCTG6ZRAfs+zxZnqM7Tw1VcuW0BR
         fGRsQIlR4izcUnDS635W18XW2FrrVTDjZ1m9uhnu+xihOyWCcGrjrV9uimNDfEjw9HLb
         ijCY1dLAInIlwFAN8HsCiJH3kWMabfMp7NvBxeAYSOiyetG+l63AlcOksMHfcECHtdzz
         lkC/ZxxQgQ44IosflsKfaLXxfjcuvUgv3HsTT/S1grwZSS+drWCGaSyiC1F+02yTYfcw
         l2CZTi/oTYpg/l/tXAD14ObN8gI6CTzTBQwjecWccKdWNmkR7LvxCQ1LO4TscfXE0JBx
         AtXQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+zGg8gd/CmvQyz4o+rfaMFfPruRpergLZA4/nfs13l+G/tgl+X0DkMWJxu+pIfVbnBv7lI98+fBgq@vger.kernel.org
X-Gm-Message-State: AOJu0YzuNaLETLMzPEe+ds7hcEymMolSii89joG9KPfyaNl6gf6hOR7h
	AAeHM5FMZE8pfFhHv0yR5mZnupF0irZvzVz2jkKwqmfDGnlhYAVs10pu
X-Gm-Gg: AZuq6aLtMvAfgt7zh7klkARruS/6eB8+MjO05DknAuitDDVTNeG+3l5zkclvBydn3uI
	KE7peRY5O7hCCV4rTHkj5AIgl4VZkCskZCZNaov2VD/mVJUJvhjTsikfL1nUwHx9OxInJKRwJlU
	1iBUbUWQQvjQn/+q5pbylz13WHnnY2xkbVEoFaavOYWqsJ7Br2/UTJ87N/+1R5OKeNygHgdFaB+
	K2Kr0mtQlTDEyB/yCugttPVt5XhI7ulgnJx6MznHv0uldaf6Aybq6crCSyhAtew5Muer2PzBm3t
	NLyMHepFd0svKbrb6S8cD7P22LNajRy/alMsJBSaOp0y/DHhX921gijyg4+9hodWZt7M5co56mt
	xzbInYU0D15woqHDfoCWH8OVyVyVA4OZ/oPUTeMRfeF99cncVNgbu9qTcxq3POmnfT292Z9cNRR
	eAzRrxqRD9YMUp3hlxg7ry0U7me6lTwQ==
X-Received: by 2002:ac8:5a10:0:b0:503:3838:ac1e with SMTP id d75a77b69052e-5070bba1c14mr3307421cf.2.1771602553436;
        Fri, 20 Feb 2026 07:49:13 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89949b3d543sm112192996d6.16.2026.02.20.07.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 07:49:12 -0800 (PST)
Date: Fri, 20 Feb 2026 10:49:39 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Johan Hovold <johan@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	Nickolay Goppen <setotau@mainlining.org>
Subject: Re: [PATCH 09/10] ASoC: qcom: add sdm660 internal sound card support
Message-ID: <aZiCkxWLHzgvHnvP@rdacayan>
References: <20260211020302.2674-1-mailingradian@gmail.com>
 <20260211020302.2674-10-mailingradian@gmail.com>
 <05873ad7-ca35-4542-b064-5b401f7bd069@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <05873ad7-ca35-4542-b064-5b401f7bd069@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267022-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,linuxfoundation.org,quicinc.com,vger.kernel.org,mainlining.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,googlesource.com:url]
X-Rspamd-Queue-Id: DE672169095
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 01:34:20PM +0000, Srinivas Kandagatla wrote:
> On 2/11/26 2:03 AM, Richard Acayan wrote:
(snip)
> > +	case INT0_MI2S_RX:
> > +		data->int0_mi2s_clk_count++;
> > +		if (data->int0_mi2s_clk_count == 1)
> > +			snd_soc_dai_set_sysclk(cpu,
> > +				Q6AFE_LPASS_CLK_ID_INT0_MI2S_IBIT,
> > +				MI2S_BCLK_RATE, SNDRV_PCM_STREAM_PLAYBACK);
> > +
> > +		/*
> > +		 * Downstream specifies that the AFE is a clock consumer, but
> > +		 * the sound is distorted (loud on the right channel and sped
> > +		 * up) unless we set it as a producer.
> This comment does not make any value, Who is driving the bit clk and
> frame clock is totally depended on the hw setup on the platform, Driving
> incorrect clock would lead to such issues. Does the codec drive on the
> platform that you are testing?

I dug into the downstream Q6AFE driver a bit more. It actually inverts
the logic and specifies that the codec is a clock consumer (instead of
taking Q6AFE's perspective), so it is equivalent to setting
SND_SOC_DAIFMT_CBP_CFP.

Downstream (https://android.googlesource.com/kernel/msm-extra/+/530cffa4cc977a348753831b163eb9d3302b954a/asoc/msm-dai-q6-v2.c#4347):

	case SND_SOC_DAIFMT_CBS_CFS:
		mi2s_dai_data->rx_dai.mi2s_dai_data.port_config.i2s.ws_src = 1;
		mi2s_dai_data->tx_dai.mi2s_dai_data.port_config.i2s.ws_src = 1;
		break;

Mainline (sound/soc/qcom/q6afe.c):
	
	#define AFE_PORT_CONFIG_I2S_WS_SRC_INTERNAL	0x1
	...
	case SND_SOC_DAIFMT_BP_FP:
		pcfg->i2s_cfg.ws_src = AFE_PORT_CONFIG_I2S_WS_SRC_INTERNAL;
		break;

I don't think the downstream code needs to be explained so I would
simply drop these code comments.

> > +		 */
> > +		snd_soc_dai_set_fmt(cpu, SND_SOC_DAIFMT_CBP_CFP);

