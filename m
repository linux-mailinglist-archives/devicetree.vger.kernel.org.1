Return-Path: <devicetree+bounces-276752-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDsDIaN2uWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276752-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:43:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 050452AD3AA
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:43:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 631D130936DC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55E933EBF1F;
	Tue, 17 Mar 2026 15:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BxpYt0xw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE73EAC7E
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773762169; cv=none; b=N/M6Uxw3rrqGtMmg8m1zAJlfxr+U3buPkVlpqWCzn3F5BHqVMcDh4SHop1ZGyoSx4i1ci9Cm475Qojax1u5O9K0ZMNEmY5z7/mVO6Khvc+PvuqHCJ1Aqca9ZbgOZSvbKoOhmFq8lW58AeNmBKAR189qHC92RLvtU+6IZGhPJlM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773762169; c=relaxed/simple;
	bh=YP9ftBgU40ZMDVr7uKljymEYVi3zFdcjpWVQapD9Goo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qxkQRGjiSk/2aaKOQw/xUoKUZBUn33fB9sFYN4P183mmEmZju+gwcsUxrfIT9RZtEi3O53t78x52KNcCSEHM8NtWPdqw/G28sGGq333esKRMHWagCc+mDp+imTzz8kO4MpTf6oTLUDHDsq9t5ahniiZyQTRythHwTQMPQhS0Zmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BxpYt0xw; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-128d2e3082eso242338c88.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773762167; x=1774366967; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DPxQhHLsn9trqYK9Nkt3NTHTqHhfajnqZ3m8HUBGCaQ=;
        b=BxpYt0xwk4L9xgh/EwJJCqTvVNnHatgRrcbn9dIMhuudN0lGZ1QVGs1ykCl/RZgV6v
         L5/yHuzlE9Hk5fmY1rNmhJRKUNwZzExSVG5FRdOFkOSVCsRnpKzsvkooMkJjSiN40Azx
         NjcLgW4V/pBJlXjC1qnnYzJj14fK7his1MqEPgqVPo540I6h7S7Jzqyo2ovekSfSchb5
         2W0Btc0rZ6yiwOFJMrMB8s5PNq8T6WzRlWB8QAiviOvIFDm9UbC0Z+6mPoN25nzuuB5y
         GYwG90PnhSjtXAbp1yIYFCtXiiiNRNoYU3WiGqLxadb+ICQYA+krgqrW7FAmtHauL5uQ
         LEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773762167; x=1774366967;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DPxQhHLsn9trqYK9Nkt3NTHTqHhfajnqZ3m8HUBGCaQ=;
        b=XMpY6YUOUM6KdT0JKqxTPt36Yp/GsUruQaxJTPwkiG0JEa8FSUJXclHVioJh/jv30Q
         Qu0R+KDl22tGC1SERUYmJ/irg86b5yAc0YQNMeL8KrhTBUh+mdW86sWaKp22Cn7i6E9K
         Uxtk6AYF1LghCqJatI7+RkxHKWRLHY5EfAlYJC3BRFHFLzpuyX8Xtrrk969v45gMJ/oV
         UFmltFmD2O8nw7oflb3jA2qPXz0EbOtHDDDD7Qo8uqg3xqY+TA7xl1iWXNUsqUoNR+gc
         aR8H9Z/MKMbUbk+3uzygYUoMAw8XIYZZSkKn3An4daPe7q5DCyle8vNxYW9I7jV9JLHg
         J0IA==
X-Forwarded-Encrypted: i=1; AJvYcCUFO4GobZX/TE5/mNr5oC5MrzhjRFPJaudKoP3ZitAm0kcq3K4rReNtGV+sSjYlZuR9n4brFxw9FU/d@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3RHJxPrkOCNHMbbfXM+KxIXrWGkiBi4m5XqOfmq4xBfJrRfP2
	WBDGDmeERNVqo00FKBbYma8x8DglHTnS2mH9n/QPD71wqcbe98wX3jzP
X-Gm-Gg: ATEYQzz5OizQpXkhwuz+VK/yV+5355sedyt94WBzJ8T3zrsN8q3NdXGrBCzx2RmKgYr
	wx7vW4vpNmQM5ycPUySb5MGupZGVLiuR+xd6LKaqJ0C19qJTULN/PFUuDLtZ+kzLpCC1ULlk8G7
	giaqTft8Kn92gkSVv+ccn7YIHMEanqrLN+UkOTYaq/dmoZ1In8VZ3/AlP3atb5j/G6IxExzUB8B
	JaXTPiJwm8tSxRVNUouzDQsYUAkCMWwiq4Zw1TPL7BKclggsOEGmWKKUYX2e/GSBtnU49+ohHoF
	lsOI2nuaossPl7liqea4Iav9qWQa0isfINfMSkDuieINAFYA7cq93C+i3/c7h6LaEX36cfyCfwc
	3ToiF8+N9XsmTR5APe7Z4mjmF3ZkybOLjhx/RbCH7Y30CN7Dfd0qBEJKaGa3QQB8e0xIErw67pE
	De0UN4TRtsxKh5SgAlyRlz9PH//TYhvcUxRekd
X-Received: by 2002:a05:7022:458d:b0:127:5cda:fb7d with SMTP id a92af1059eb24-1299ba11a49mr4977c88.6.1773762167235;
        Tue, 17 Mar 2026 08:42:47 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128f639d1e4sm15787042c88.13.2026.03.17.08.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 08:42:46 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 17 Mar 2026 08:42:45 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Colin Huang <u8813345@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org, Colin.Huang2@amd.com, Carl.Lee@amd.com,
	Peter.Shen@amd.com, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: trivial-devices: Add Delta
 Q54SN120A1 and Q54SW120A7
Message-ID: <4b448eb4-73cc-4d42-84ea-7a0d9a0153d5@roeck-us.net>
References: <20260316-add-q54sn120a1-q54q54sw120a7-v2-0-60e6182cc4a7@gmail.com>
 <20260316-add-q54sn120a1-q54q54sw120a7-v2-1-60e6182cc4a7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-add-q54sn120a1-q54q54sw120a7-v2-1-60e6182cc4a7@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276752-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 050452AD3AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 04:39:33PM +0800, Colin Huang wrote:
> Add two additional Delta 1/4-brick DC/DC power modules,
> Q54SN120A1 and Q54SW120A7, to the trivial-devices list.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Colin Huang <u8813345@gmail.com>
> ---

Applied.

Thanks,
Guenter

