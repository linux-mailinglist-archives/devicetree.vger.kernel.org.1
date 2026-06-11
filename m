Return-Path: <devicetree+bounces-310312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cbahLdGEKmqArgMAu9opvQ
	(envelope-from <devicetree+bounces-310312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:50:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCDD670920
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:50:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=ctnpouTD;
	dkim=pass header.d=redhat.com header.s=google header.b="YKY9/4rM";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310312-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310312-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B1153066424
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B273BCD0D;
	Thu, 11 Jun 2026 09:44:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0703C1090
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 09:44:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781171096; cv=none; b=AddwPsWQy+R5lyl/xEy56GJn/fZPYBmYLKUS13ivICKCzr9RnWzJFUYS6JijDfjhQQRiB69FbKA6qkcG6R+DO3BnA1x363hX8i0sNmWyHSQ+njHdUX1bfFKcc7q+w4ZswnT/sfQ9zl9FgfpQ606Y5A9gpXcxf11YMir5ggP0FyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781171096; c=relaxed/simple;
	bh=kzSbnEbLCy7oERIPuUeORqHSj6s6hO8tcRnNEjCA1mc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=lkaUeaLJcwdiUAzsBKNA9S3XD+kz2p0GproORYjfUixJtRTDLxSph6wF2Lq78fS9D73oujrEC9GvnaG0+IqOblWSKPCPoqBR6gsMKBZC7F12eyiTUS79Zsrzvl8VmtL7SlDFk1TJOFt6vBPekuK7hYK4xfMuIn8V75kBJlBYbz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ctnpouTD; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=YKY9/4rM; arc=none smtp.client-ip=170.10.129.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1781171075;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=1SIia4HOnRnNxMuugCZfZvhfm+zstNHW2PddKrs89mY=;
	b=ctnpouTD4SpVtLtaceUBxsvaxVk/L0kpI016u1/ArXgAz6sHbEKB4fQcXBsIS4CePsL6Pn
	e436ZW1bwOL+ILgDi5JCHqvg5aWlqBlIpYf2N1ticYAO4sYIYihXCtyiqiGWsQTiXunhqU
	JGyArJAgen0ossMXT2ee4eyQPmSNw3I=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-203-0CU8d6deNuqRgBTHXz_1KQ-1; Thu, 11 Jun 2026 05:44:33 -0400
X-MC-Unique: 0CU8d6deNuqRgBTHXz_1KQ-1
X-Mimecast-MFC-AGG-ID: 0CU8d6deNuqRgBTHXz_1KQ_1781171073
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-45eee3f9f03so7436144f8f.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 02:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1781171073; x=1781775873; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=1SIia4HOnRnNxMuugCZfZvhfm+zstNHW2PddKrs89mY=;
        b=YKY9/4rMCFTyEr8x+Viwcin2FwoXSvlQ3hJEH2foqRuD6zZQa1CQ92PVlNRbKzLgMR
         L9OjtQsX0Rf3VQB+LkZ+vc8NtVihW7DcmJG9yR/5jMGsZWb4H3HC23BNA8IW7HQL4dUb
         2BIPP0kAIVe2ZoabjPZe+XMBtQ+cflbICU5XgP5wMdd6oZFBFM3rEQRXVJCQojlT/h3s
         MBEaKfh4PSwyUCaUICgPxRn8X5yAKyryh+aTu4hJ8H46erTHe6BlAc/KBZ1UYxXmrpBd
         8DqI4icaNc7fXGorAthAZJNh17B3aMJLrwK0ARzlFG4Q+TbSpADpCH7EhkREeMBV/epv
         ccZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781171073; x=1781775873;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1SIia4HOnRnNxMuugCZfZvhfm+zstNHW2PddKrs89mY=;
        b=r5587snekXGYS+OGLVwWr6GnZoQkn5JtDyep28ItzVW5uMGE0ESTf72WpPQso+79Wh
         xjHOmc11+c65N0NGrolYJbPr9XcbIA/9eFttfBryISuC2L9vdkPN5eSse+gySF2GJZga
         oH0Qrb4rJQJ6DmdPqCzLDuWkTXgndrYxZCEkNslVGiTQ8pOmAdMrl2vxjALI9bnZ0Eaq
         SlZUsD1OxGwBizlN1P8j5EEhfb2EH8WpxCRf4O4kajgO9eWkyXDfUsG9up6JmETIV5/Q
         L/EME8UYQU3uhthc6arDATohYHtO3sZAPXaVHO83FWmETrJDwQghamlsCLT6NShLu0Q1
         raNg==
X-Forwarded-Encrypted: i=1; AFNElJ9BIwfVtIslXaTzoLvGTrrsGrR5he2Kpszpxd75xeYbs9iN+3KRf1szIoWJLhkWLhnBy7iY+iywIlt2@vger.kernel.org
X-Gm-Message-State: AOJu0YymryfjdZQQitVGtn1fR/CVSvLsoCXdoEb4l+iNtYQHVtGJkP4B
	cFdXQdizaZ8pdBVQrTk+i9vg6kigG/4GZRfPD+ckVVZv9HgiqZQUcy+R+wt+Xbf8gfmdgf3h7ST
	nAOaiJXYnU94fvEwdffFYr/G9ceRJEcKJbd+ab/7OX+ToCILYiktf7NPp+LVE7+8=
X-Gm-Gg: Acq92OEucsHcCa4R5JvdOEIXyFydvaD/iWYlLh89JUYctT9qQp6uhlumAWuF8PbWy1I
	5Vz0FByp3t0pyow0ri71nO+i/Q2FaRxoOaFbv7Y0gML52h3x/ebZHyaSqItlhiobUj54GS5yfG5
	6YWCrLpXfs/D5kobR9FzBoFcgG+I79GspoBBL+933JMYZjUyjFrI7+m/i3PMHsbbJuxSQoEGin1
	YCCh15PY2Xy/yHlY2YE5ZchcA7uS9lhSxl6DUL1/F0QSVOhl335MIQyJWApxZxi0HsXJUOilnfl
	T5IgRt/dm3nwA42fUXRJJ9jaPPEHwUOolo4pbHQOJs5P79jsVW2LZW8JvQbrQurNLHYgb5otfM+
	XD/mYUQBfEmK7OFNaZ0IPM/R1rfIu81XKX7gcONtjV7PdripZUZxtOFxB0rfI7KqiSMZMevcP4A
	7kQJauayYKMOuzXzs=
X-Received: by 2002:a05:6000:461e:b0:460:662d:e686 with SMTP id ffacd0b85a97d-46067599390mr3308748f8f.13.1781171072690;
        Thu, 11 Jun 2026 02:44:32 -0700 (PDT)
X-Received: by 2002:a05:6000:461e:b0:460:662d:e686 with SMTP id ffacd0b85a97d-46067599390mr3308709f8f.13.1781171072292;
        Thu, 11 Jun 2026 02:44:32 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2ed944sm82178555f8f.13.2026.06.11.02.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 02:44:31 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Amit Barzilai <amit.barzilai22@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amit Barzilai <amit.barzilai22@gmail.com>
Subject: Re: [PATCH 0/2] drm: Add driver for the Solomon SSD1351 OLED
 controller
In-Reply-To: <20260610164428.180091-1-amit.barzilai22@gmail.com>
References: <20260610164428.180091-1-amit.barzilai22@gmail.com>
Date: Thu, 11 Jun 2026 11:44:30 +0200
Message-ID: <877bo576o1.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-310312-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:amit.barzilai22@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:amitbarzilai22@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[javierm@redhat.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[javierm@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ocarina.mail-host-address-is-not-set:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BCDD670920

Amit Barzilai <amit.barzilai22@gmail.com> writes:

Hello Amit,

Thanks for your patches.

> This series adds a new DRM/KMS driver for the Solomon SSD1351, a 128x128
> 65k-color RGB OLED controller driven over a 4-wire SPI bus. The SSD1351
> currently has no DRM driver; the only in-tree support is the legacy fbtft
> fb_ssd1351.
>
> The driver advertises XRGB8888 to userspace and converts to big-endian
> RGB565 on flush via drm_fb_xrgb8888_to_rgb565be(), building on the GEM
> SHMEM and atomic modeset/shadow-plane helpers with damage-clipped partial
> updates.
>
> The SSD1351 is implemented as a standalone driver rather than as part of
> ssd130x. ssd130x converts XRGB8888 down to a packed <= 8bpp hardware
> format (mono, grayscale, or 256-colour RGB332); the SSD1351 is driven in
> its native 65k-colour RGB565 and does not fit that pixel pipeline.
>

I think that makes more sense to have the SSD1351 support as a part of the
ssd130x driver, rather than as a separate one. There is already support for
SSD133X in ssd130x and this family also supports the same 65k format than
used by SSD1351.

The correct approach in my opinion to add SSD1351 support is as follows:

1) Add support for 65k (DRM_FORMAT_RGB565) for the SSD133X_FAMILY.

2) Add support for the SSD135X_FAMILY with DRM_FORMAT_RGB565.

3) Optionally add support for the 256k color format to SSD135X_FAMILY
   but I don't think there's a native fourcc code for this. So likely
   you will need to do a XRGB8888 to native 256k format conversion.

By doing this way, not only SSD1351 will be supported by ssd130x but also
you could make the existing SSD133X support to use the 65k color depth.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


