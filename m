Return-Path: <devicetree+bounces-263835-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIpoIHqEiWl8+QQAu9opvQ
	(envelope-from <devicetree+bounces-263835-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:53:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBDE10C412
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:53:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 264A53004606
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3E3318EED;
	Mon,  9 Feb 2026 06:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TR8pGz/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE56F2EBBB3
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 06:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770620022; cv=none; b=uTkTzwpstFoGyhku4yIJD6Di5sd91PUe+Up26EubtazuP2SqQR9kh7S/1r0L5kQU0k3nfEbnahKaJuLbchnTynBT3SA0/rFNXkuHazhxazoSNh3VuTkce8BCHemk4U1+CmTO0QEoqF+bOdtZj38b4AmuCWji5pX3gTe96J3SbbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770620022; c=relaxed/simple;
	bh=34oE8k9pbYUI5EGosABwPmeVX24fpZFq86+F+iptjnk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XPS/uc2xEntALOK1+iY/wMbkqJbnquuEph9m0A6nTOGvRJYLWXNewErfbDzvZcaNIG4kUfaPPAi9q141Q9Pj87KVE49hucN4f1LQjm4eP8yeOlkka6lzrV/yaFGfdpUCqPIZk9XTZQe6TNYKyv4k/JB6wEW5HoOec7PgaGc+a/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TR8pGz/t; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3543b9f60e3so1890436a91.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 22:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770620022; x=1771224822; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J0yBZlUfIwO8R+8/v699G5QRXerYU4/HGTHJycEONF0=;
        b=TR8pGz/tufmAFgA6xgWviADId42jKk5sYv0ITja6rUsXUI5Lg1iYtJ5wxZWKSTK2qe
         ilhc5MsAa97OEUtdoWR61MEPXMh1j829hrPSqfR6oKHkEcnnZFx3bNL5Dmz+jXqVAR4p
         C8eyFmaOjvWI9ccLfkl56uzEJjQr7ivUix4WE6Qy9nOySJhvL3BAdRl90LoVAuezzzB8
         LzBbVM0u5eXZifpZdg+/00WihuTbUxL37GBtKWNFHIQCs4z0D5Z4l7uroMQ8UwU8/Tz1
         9GqP6locmbG5uYTACkJEmDcp2eObVk31d3zvd9dHQYhsAuZgyRIG/4k33962wyuXud4x
         wMwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770620022; x=1771224822;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J0yBZlUfIwO8R+8/v699G5QRXerYU4/HGTHJycEONF0=;
        b=AOBr2Q6nn6Vv3HohOFEMSstuT7Z1jE4blbgo6y5JJiOfLgL+SkVfpRxkZG9yw16H/V
         3utSmgDLgcXtyjad8LeL0IiBLNwN7G3ziUc6c/dnErPXLVPaMRMOd1nuXZaz20yDj39x
         jKraEZlsjB+mQGFgS1giN+2VXQsIGROp2Z1n0cCmwFMzFurEsZSGgR9nJypZC8Y+67N9
         OPhK3VIWCsOeLpHlDHzQ8cGzdS3jkRLEzBtdbquSQD8NescLl/Z0QxOLhPYaekHrz5K5
         R1S8WW4DSfYy6AeAL0LkzcAcydgkHxjlvsOGakA+fP54sb4SuMCtFpaxc78nFu2eD8LT
         0DkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcQ/xfaYXJl+Pvc0c9W5x3dJV8nszPBCdP9zXK2IK3G1DcvzdG4F7AZl59kCYBNJwWayskcAPqAcBh@vger.kernel.org
X-Gm-Message-State: AOJu0Yye3r0gwMBQZ44puaA9ElIVERprYo7vIHbqtGqGIhW1oiD/8HaV
	q0xZ/+O/VgJkmkUv0Fh1Ez1NQSet+buCFRFHW9W2QpR4fAh0Ya5hekXX
X-Gm-Gg: AZuq6aK2r85i4QY7gzIaZuzLVOTTDJi1MRa7ijBc6+a+hdOUySgmcVLjFl9dKSmkt+p
	Wd0VC1M1XeWGnRWrhMm5t4P2WaSFszU1uRu52L3fa26iDBm76IYPPkC/1OAqK9Hhy0nYz4VBxVP
	6othrJZ64SH0K3I7qIzKnWQ7ys5F2PthaVIAKJVwqq0KscbFbyy2pnspM7NanuYa1BRQNrorr33
	K1ysFqksAVkWfUqhhYV+nNaJGtw1aoo96GfRmMGycVXaOMfyZEH33JwRcAfx4UlW1hrzQXEjswT
	iaPsXSe2G3m1G7jbwYQSWbzaSUBt4canAyegjmUksQY3ZIbZF6oSFDzXZr3SHIczm7HS/Na2/aB
	8Uj6aPZuLzhfFQJ7VFSCyh0avCzAKSf7TWQoQZVL73rSr14+8GHCTZnoNMZMpXbExAY+PqRj5FN
	VSeg==
X-Received: by 2002:a17:90b:1c87:b0:34c:3501:d118 with SMTP id 98e67ed59e1d1-354b3ba32cemr7736151a91.1.1770620021939;
        Sun, 08 Feb 2026 22:53:41 -0800 (PST)
Received: from localhost ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354c7fad6c6sm4166851a91.1.2026.02.08.22.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 22:53:41 -0800 (PST)
From: Carl Lee <qq1145099@gmail.com>
X-Google-Original-From: Carl Lee <carl.lee@amd.com>
Date: Mon, 9 Feb 2026 14:53:38 +0800
To: Guenter Roeck <linux@roeck-us.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Hsu <ythsu0511@gmail.com>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	peter.shen@amd.com, colin.huang2@amd.com
Subject: Re: [PATCH v2 3/3] hwmon: pmbus: mpq8785: force direct mode for VID
 VOUT on MPQ8785/MPQ8786
Message-ID: <aYmEctaGrQ578xfD@carl-amd>
References: <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-0-3744cd9b2850@amd.com>
 <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-3-3744cd9b2850@amd.com>
 <fa07bf22-d56f-46fc-8e39-a50dae2efc46@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fa07bf22-d56f-46fc-8e39-a50dae2efc46@roeck-us.net>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263835-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,amd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qq1145099@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: CCBDE10C412
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 09:46:05AM -0800, Guenter Roeck wrote:
> On Thu, Feb 05, 2026 at 06:01:39PM +0800, Carl Lee via B4 Relay wrote:
> > From: Carl Lee <carl.lee@amd.com>
> > 
> > According to MPQ8785/MPQ8786 datasheet, VID mode configuration is
> > the same as direct mode configuration. Therefore, when VOUT is
> > reported in VID mode, it must be forced to use direct format.
> > 
> > Signed-off-by: Carl Lee <carl.lee@amd.com>
> > ---
> >  drivers/hwmon/pmbus/mpq8785.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/drivers/hwmon/pmbus/mpq8785.c b/drivers/hwmon/pmbus/mpq8785.c
> > index f35534836cb8..d6624af076c3 100644
> > --- a/drivers/hwmon/pmbus/mpq8785.c
> > +++ b/drivers/hwmon/pmbus/mpq8785.c
> > @@ -48,6 +48,25 @@ static int mpq8785_identify(struct i2c_client *client,
> >  	return 0;
> >  };
> >  
> > +static int mpq8785_read_byte_data(struct i2c_client *client, int page, int reg)
> > +{
> > +	int ret;
> > +
> > +	switch (reg) {
> > +	case PMBUS_VOUT_MODE:
> > +		ret = pmbus_read_byte_data(client, page, reg);
> > +		if (ret < 0)
> > +			return ret;
> > +
> > +		if ((ret >> 5) == 1)
> > +			return PB_VOUT_MODE_DIRECT;
> > +	default:
> > +		return -ENODATA;
> > +	}
> > +
> > +	return ret;
> > +}
> 
> In addition to my earlier reply, here is AI code review feedback:
> 
> This switch statement appears to fall through to the default case when the
> mode is not VID (when (ret >> 5) != 1). If it falls through, it returns
> -ENODATA.  The core function _pmbus_read_byte_data() will then see -ENODATA
> and call pmbus_read_byte_data() again, resulting in a second I2C transaction
> for the same register.
> 
> Also, the `return ret;` at the end of the function is unreachable because
> the default case returns.
> 
> Should the PMBUS_VOUT_MODE case return `ret` instead of falling through?
> 
> Guenter

Got it, I’ll correct this.

