Return-Path: <devicetree+bounces-268377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gO3HFar5nmm+YAQAu9opvQ
	(envelope-from <devicetree+bounces-268377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:31:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B11198190
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:31:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6486305B288
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E74F83B8BC1;
	Wed, 25 Feb 2026 13:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JSHLFoFv";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="QFdPR5pF"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58E821FF47
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 13:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772026177; cv=none; b=mroM1827Ja4JCwZnCJOdC4zHNzxMONHCjPGvdobqk+7Wc2rezQ8YKzSiq3UA2OJiIvZ9xGumqx/h6IqldRQLebSK3iHBp0oeFJqK+iDxl72XcepQ+8e2/q4yRCRYjb/QOJDtf7AWNWKmIdAnQnHltESwcKEUP5MytvSLiTcgNSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772026177; c=relaxed/simple;
	bh=kH6pSAzc7ixvwL56p9UiHb2EASU/2oZ/f+xfxqiwvCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P056VrQiwcSOtpA9X7Jf33VA9ANixvy2CQDYq1KqzwnFouKOJB5O0K9RWVl2zjPkJGGekjEFflPfjTcck4lZyNWz1gicJz75AuZtPzy0l+6iT0EmoZyZiTtHXE+eXxxCx+v80wOv7lavATWiZJvVBmwU3AdFrI6GIJCaynf0ujg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JSHLFoFv; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=QFdPR5pF; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772026175;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bolAAaL16DQVnJO0fDxqs1CZEsyfX0mApW10uOjI4S8=;
	b=JSHLFoFvvD7KYQ96kFjWs1VwGcoeLcvHjiD4aCfPaEmShkS6v4VtPhUB2rxCVnXuxRZ7EU
	10sIe8T89sjePXIuyBynXvx1ReGbvW1FRHDz+wy2ueXlAvtcqB/QOsr49d3A6xJvJDfJHv
	7WqKpTn2h3sJ3HpPesYd/quXivn60NU=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-73-AHNvnYojMAakXRaMgOBzkA-1; Wed, 25 Feb 2026 08:29:34 -0500
X-MC-Unique: AHNvnYojMAakXRaMgOBzkA-1
X-Mimecast-MFC-AGG-ID: AHNvnYojMAakXRaMgOBzkA_1772026174
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-506b4bdde91so688608541cf.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 05:29:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772026174; x=1772630974; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bolAAaL16DQVnJO0fDxqs1CZEsyfX0mApW10uOjI4S8=;
        b=QFdPR5pFgRzajjax+yNvp0aCxyfIZ6qXZFDUBTtnhIWvUrPIj5eivFqXlp/OHNzi9f
         6nTXU1zPLH2/Tt5T4lZjZsUnjstGjSKyD84DoTIVA6lJHmw5TQKj40irs/oSJdDaRiPG
         NE7v3AambwDwg5OPwBf1VMQahFmIEI2fBcL9vyiHFYJxYoWzJ2fqZ7jjKLIKvuN659fB
         zJG4cpWQm0euirCxWwqZ/vdGMu/ZXUcD6IvCehYY0RfiLRla0YWgN4F+uIbZE5i5pS+C
         NHr4vo6M5zERgHcMWGwbJj1eeio0tFTq0thuwwpCoYR4M9/6gLyKztkiM1sLFrlyhYEP
         rinA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772026174; x=1772630974;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bolAAaL16DQVnJO0fDxqs1CZEsyfX0mApW10uOjI4S8=;
        b=iALIcDYD18Zzgh+SiM3FWb8C/IyV6Y5stUPcKuTVNGRDUpy4ihuyBRSXtFxyBiPfcf
         pzknsfHPK5+72PdsF3jmK+/8EiDGPcUs8TRFG8yJ8XgvI3T4qGFBVjVV/xG1Y9eOb989
         rbqxazN9FQseaii/bClD27Yi8CGRwCYMOpXYWbb374UaU6wzGdpGO0upRzUYkTHjgIek
         u/1OCKMl0KTG4AdVKADsSRs5jA2/2FisCv2W7NIxwueUVbzwsp2JeGMUolfAcJ6hMKFK
         xloo86IfGh7xq8I8YkFiCOvAjUSjThpDa6R5a3Ddq/CWeuNd+Z9LoXmgEUw7J2fG4ESj
         WeEA==
X-Forwarded-Encrypted: i=1; AJvYcCXji1VEcPEtukJCL991J19cw34d1qBhe7n7OKhunGs/GTlcYdYrrkXz8vbmN8+5DJ+JyA5ljvv+97js@vger.kernel.org
X-Gm-Message-State: AOJu0Yx54c+zcJO/jNzLSFD0F54EMB6BQ7ds62N2hqSzrVUJtW9pHraa
	4jm48QnwLZAf95F+Z+6vELZ+N524EQr3Jiw0dPT1cc7V8YGtaZviZ5eqXFdQ68K+4i3bopw8gA6
	MkVDQAsAnXZj4E2XA8gp9wu9YXtRlofBVDsjokNThCDLUnTq6A3kMKS5nDMUivxU=
X-Gm-Gg: ATEYQzz/CEAFATnl8Ut78gnE+wQda0noi6iLthCTDvDBQlc+8U/s0Vue2KQutO9hxJp
	qU9a0WKCkxsY49sIDQVdno0KTTd63/hk4SYA9iV/8sExyEvuUdU2aYWsD2SKViu2kHDBaK219Vy
	iuM5/78mBjtYs6vS1ky2oixpw6r0NpI5UGqqO/u620tGBQNoXbSz2D6bF5hfwF9B5BU/v+2OtD7
	q9BQpRKLCKsxzokaI2MYJj59c88hLS+BD97hlObvOAQLUULyb5Ttpsef8oAODfNe7DqljXdvDyn
	LW/Ye6TMYKs33w0Za38J1l2dL68nWjv5LQITkXzOpHM/8mNG8MTthhms3qpTatAH7/yAFNITmnN
	BhakmGsKAapQldbXw84TQeNVlztCEIcNszMwPUiLy0lPvpDRZwzn7vx/F
X-Received: by 2002:a05:622a:48:b0:4ee:2459:3d6c with SMTP id d75a77b69052e-5070bcb29e2mr204210641cf.58.1772026173814;
        Wed, 25 Feb 2026 05:29:33 -0800 (PST)
X-Received: by 2002:a05:622a:48:b0:4ee:2459:3d6c with SMTP id d75a77b69052e-5070bcb29e2mr204210171cf.58.1772026173289;
        Wed, 25 Feb 2026 05:29:33 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5070d6dffadsm125621181cf.31.2026.02.25.05.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 05:29:32 -0800 (PST)
Date: Wed, 25 Feb 2026 08:29:30 -0500
From: Brian Masney <bmasney@redhat.com>
To: Xuyang Dong <dongxuyang@eswincomputing.com>
Cc: sboyd@kernel.org, mturquette@baylibre.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	troy.mitchell@linux.dev, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, ganboing@gmail.com,
	marcel@ziswiler.com
Subject: Re: Re: [PATCH v13 2/3] clk: eswin: Add eic7700 clock driver
Message-ID: <aZ75OuPEw7co40J9@redhat.com>
References: <20260214101421.228-1-dongxuyang@eswincomputing.com>
 <20260214101519.341-1-dongxuyang@eswincomputing.com>
 <aZNRFYs_QuGRI8PV@redhat.com>
 <51ff08b4.38e3.19c9394ac61.Coremail.dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <51ff08b4.38e3.19c9394ac61.Coremail.dongxuyang@eswincomputing.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,vger.kernel.org,linux.dev,eswincomputing.com,einfochips.com,gmail.com,ziswiler.com];
	TAGGED_FROM(0.00)[bounces-268377-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F2B11198190
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 02:55:20PM +0800, Xuyang Dong wrote:
> > > +
> > > +int eswin_clk_register_divider(struct device *dev,
> > > +			       struct eswin_divider_clock *clks,
> > > +			       int nums, struct eswin_clock_data *data)
> > > +{
> > > +	struct clk_hw *clk_hw;
> > > +	int i;
> > > +
> > > +	for (i = 0; i < nums; i++) {
> > > +		clk_hw = clk_hw_register_divider_parent_data
> > > +				(dev, clks[i].name, clks[i].parent_data,
> > > +				clks[i].flags, data->base + clks[i].offset,
> > > +				clks[i].shift, clks[i].width, clks[i].div_flags,
> > > +				&data->lock);
> > > +
> > > +		if (IS_ERR(clk_hw)) {
> > > +			while (i--)
> > > +				clk_hw_unregister_divider
> > > +					(data->clk_data.hws[clks[i].id]);
> > 
> > All of the other places you are using the devm_ variant to automate the
> > cleanup, such as devm_clk_hw_register_gate_parent_data(),
> > devm_clk_hw_register_mux_parent_data_table(), and 
> > devm_clk_hw_register_divider_parent_hw(). What do you think about adding
> > a devm_clk_hw_register_divider_parent_data() for consistency?
> > 
> 
> Hi Brian and Stephen,
> 
> Thank you for the suggestions. We agree that implementing
> devm_clk_hw_register_divider_parent_data() is a good approach.
> In v14, we'll add this function in clk-provider.h as a separate preparatory patch.
> The ESWIN clock driver will then switch to using
> devm_clk_hw_register_divider_parent_data() instead of
> clk_hw_register_divider_parent_data(), with the driver patch depending on the former.
> Does this approach better align with upstream conventions?

Yes, that sounds good.

> > You can now go out to 100 characters for the line lengths instead of 80, however,
> > I'm not sure how Stephen feels about that. Personally I think it'd make this
> > block, plus some others in this series a bit cleaner. Taking into account the
> > current indentation, this block could become this with 100 characters as the max:
> > 
> >     hw = eswin_register_clkdiv(dev, div->id, div->name, phw,
> >                                div->flags, data->base + div->offset,
> >                                div->shift, div->width, div->div_flags,
> >                                div->priv_flag, &data->lock);
> > 
> 
> Stephen,
> Brian's feedback on line length was very helpful. 
> For v14, we've kept lines within 80 characters wherever possible.
> In a few cases, such as function calls with long parameter lists, we've kept 
> slightly longer lines to preserve readability, 
> but we're happy to rewrap them if preferred.
> Does this approach work for the clk subsystem?

I don't know when Stephen will be able to respond. I recommend just
posting a new version.

I apologize in advance if he asks you to do the opposite later.

Brian


