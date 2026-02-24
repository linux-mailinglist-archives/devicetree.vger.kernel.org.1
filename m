Return-Path: <devicetree+bounces-267817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WL3wEgKBnWk/QQQAu9opvQ
	(envelope-from <devicetree+bounces-267817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:44:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC1018592E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5617330626C1
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66F93378D80;
	Tue, 24 Feb 2026 10:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lnFJifrN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4B0378D73
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771929751; cv=none; b=KGRIxSNyVXWV+ZQmIxQq0wsvv9KfNZ4tyTrTNEIgyx4hBLXLbXHOAKxnVDsKBEHEVX463vyakteipPIUlrqzkBOTLw0+d+qVa3vZlO7Yn/ugr+SZ4512Nn0Dtlg99zaFgD27EMjsCNLAZNhHQ6il0FCLrxEv6s4D+N/Hklj1WOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771929751; c=relaxed/simple;
	bh=I78N8rF/8LWc6Qzb3UH/ZZLbo+X1Ls6YEQsdCGS5oXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sz3Nj9faIhDcI6T4rdIHbpogNhFS8biM1QNzB+FQKgN+I8X732q0XbWdYcLGTrBI1FpdC/Y8bszlsR932JvCkJO1LqCPDa+R2J/LrLiIURRJ4EgIY8GzkercjdCXlucpouYWSb76x5lD0XYCBujbDm1MawuZzKWRmcZyNbhsJD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lnFJifrN; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48374014a77so55585135e9.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771929748; x=1772534548; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qxrFOhSYsYdjcEEIX+fNlQR1m8DAMHVbt1nhl3XPkLg=;
        b=lnFJifrNvf/Ng+Q1sE0tfvX7m/7WgS8yYXxRHBY9myu/V5f9vHFx8pmduK2QOWhXKg
         t/noJToEi1kc3L8nbgvq3PJOp92rYP9QnYZeE2C7DBenpPsFUaavlDyb+cnSIjCbycRw
         tTYV7bYnKPwE27a7JDrlTsB56xudACyd3lB+t7OMYqKrP+D9ZDKPRRMrDG2NZ6GwpG4D
         OXgLnHntI7hxEv4YRit5k/X8Pp5NPnQdBkEWUqw7Pwjp7Yq7nzt0gdfdGQ3kQJ6MWhnx
         Rw00kSCpltobMFk1IoeEZxBXy+xyRCGknje2FT2ZSBX/rJxL3AV7NCnl1cA5CwdKlX51
         gF5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771929748; x=1772534548;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qxrFOhSYsYdjcEEIX+fNlQR1m8DAMHVbt1nhl3XPkLg=;
        b=RQBiRkpm06t02mXBJm6ml3v934EgYLN+4DdRUqb+nRCEWmyrt6POMr7hEKGVjiYV6X
         N4ta4OvmlGcgkPw2bJpvCZfc/9DoAe7rQcmermPxLMHPNO6Cq0QAFcKmnj+PANXDRbLV
         B5j3GLrIWKU18s1W4L0oac31fcSRhfm612D9lAN/VoWzgN+n2p0vQnLAfBSw/6szzCb8
         50WyX9APpP/dmdSjl3td6P4f2c43dGm231wPtjYi0vcsxXvHQ0SXaKZcghw3kOTDxaXM
         gCcsCbQbYvJ8RvDS1YZ9NSeJ6CWeupQ0TrN4qXWQl7DkoDgn15ip3pMG2QoWBtQObWvc
         rbFA==
X-Forwarded-Encrypted: i=1; AJvYcCURviCWGcwgvm7qG+VBL3HzDlingCrZsu0rX4h5qVUjf6OGFxbuD0nTU/2+YEaqLqRPLpysJ7OplKtW@vger.kernel.org
X-Gm-Message-State: AOJu0YyxYM463/lohxE7nT9I+LGtfP+qQr16N6RR97L4K5szI09UMTGa
	onOZy/rbOdAe0pbZ7N7hnbzayM2jqAJ1YbtLfTuPrjPxRIgyJLuNVCZPxsYz+g==
X-Gm-Gg: AZuq6aIoOx70qhZO7lw7x03XqxrsuG3NXb3U8psxZu+4+IqurVCP0ymcL5N3w5dF9JO
	6I5X06KcQAsGjTLXt6iKb9DqSbEkuD0xr9uEl7qPh3K6OqQGWjRsqwE5Pfa6lUzvbkA+jL+t3f3
	EMu+xFax3x3Mx8Xq+crumofBjYAU418Udf5YFsjUx5+qdkXPaMF/yq38VH4D2HXcRK9t/W04uYk
	j3qOJcUGpuL74cY5QHCXgb3dDC9FP8ul4wReum3irUSC/YlTTalXoWe8iqUIo7GS1ryUPujsCxV
	26TugIILSl41KeFejvD8YKZBkGLVpXAxQLShIhCOXr42lvqRkq+vT8qeUdUkCPz/yBXas/BhmFw
	nqBUQtSRqhgwV5xrEX6TeqyydaIYM4LF/Ax8IddwuAqMoqWLMiHqrhAUXQFj1mlZxh/62TW+jv3
	Z4gbcHmWgRBMtL2aLZY2YHP5EVrbDNjx9RTlPZOrBeV+jcolooyJv/JBnIiw4TYXH7g7UQhwmwQ
	DjjeWPny+a4xHed31rnhiLURiLhdghVn+5lllAbFDJHEAA=
X-Received: by 2002:a05:600c:818c:b0:47e:e414:b915 with SMTP id 5b1f17b1804b1-483a95a8578mr191677775e9.2.1771929748112;
        Tue, 24 Feb 2026 02:42:28 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483b82203c0sm17115775e9.7.2026.02.24.02.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 02:42:27 -0800 (PST)
Date: Tue, 24 Feb 2026 11:42:25 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-bluetooth@vger.kernel.org, pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <david@lechnology.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: net: bluetooth: ti: Add property for
 enhanced SCO setup erratum
Message-ID: <aZ2AkZSBou1hTMF6@Lord-Beerus.station>
References: <cover.1771847350.git.stefano.r@variscite.com>
 <db4c7eab9d0c2f71eb61baff240957596f099401.1771847350.git.stefano.r@variscite.com>
 <a5d4ebf0-9d99-494c-b46b-a6140610c9e2@kernel.org>
 <aZxE__Ybg5p2DaFM@Lord-Beerus.station>
 <20260224-ancient-herring-of-debate-c3b5f8@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260224-ancient-herring-of-debate-c3b5f8@quoll>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267817-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,variscite.com,holtmann.org,gmail.com,kernel.org,lechnology.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,Lord-Beerus.station:mid]
X-Rspamd-Queue-Id: 8FC1018592E
X-Rspamd-Action: no action

Hi Krzysztof,

On Tue, Feb 24, 2026 at 08:35:30AM +0100, Krzysztof Kozlowski wrote:
> > 
> > However, since this may be considered deducible from the compatible,
> > would you prefer enabling
> > HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN automatically for
> > "ti,wl1831-st" instead of using a DT property?
> 
> Yes
> 

We have now tested the WL183x family and observed the same behaviour
across WL1831, WL1835 and WL1837 modules.

Since this affects the WL183x family and is therefore deducible from
the compatible, I will respin the patch to enable
HCI_QUIRK_BROKEN_ENHANCED_SETUP_SYNC_CONN automatically for:
- "ti,wl1831-st"
- "ti,wl1835-st"
- "ti,wl1837-st"

Thanks for the guidance.

Best regards,
Stefano

