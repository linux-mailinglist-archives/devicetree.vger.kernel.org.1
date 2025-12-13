Return-Path: <devicetree+bounces-246247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C03CBA7BE
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 10:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E8973011013
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 09:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C04A2E090B;
	Sat, 13 Dec 2025 09:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iIigXs79"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B9E2E0919
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 09:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765618850; cv=none; b=oxnzPiy2Bq4W7c8wk44aXVG7Mhg8wR+8rPWgmgjzqSGseoWBHZfnNXFxs+KClpMfYtSZo74eU3b1FkKLvyz3haAo5InIi2kuUa/19HdMStqljhkQOOwc51z4WdSsQUQCilmlAvvOPPx3pnDxu2sdkQtA/U2FpPpjajEkkZFHm/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765618850; c=relaxed/simple;
	bh=qEFKXie5vJrx6a5S+nNUgx0Sj0uAo/+iyw1Pq2VAZqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O+azSjXMI6rkQFn+xzwmqc9ri2Vvzsb24lr++53sSZxgAmqBRSBneq6gVOvZHtjRjTVY4O2FTDcWSjMSufGTjSVhqAQG2uqmQ9XaG+EB8tI5WECiBuetqkMppHuUhHMB5rnZKUsxJmdLsFyg+i0iamMPyeuaUJ5M8fXAKpcsgFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iIigXs79; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a0a95200e8so321235ad.0
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 01:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765618848; x=1766223648; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GlXqF9nhSvIgkdEsUbMZ/tQ2h8iuKeKknEMLOxVfXsw=;
        b=iIigXs791UFbaMi8+xUoJvgyMDjAu91rP0RjF1V6GNhC3gx8KpAC/u8FHhXrk+UJ7+
         YIr9MPXVWVleWpPvb3rQt5SXGKqg0D/54AHXaiK7TT1G2NtBXXOM3qlzcYkyQ0qsTmcE
         rSZ0vVTAZunhpQJQIrY66ynkt7iqgvoDWPfKUSI67HUFONBC0BMDAPfKejqdjIaj6Zs4
         pdV73XRrke9YVdOopsGtvdVMgpvb55spfcYT5KASxD9QMDwtQRusD41udXWlhPNvx9ri
         4XPjPkpyQKSSc0YExwd4c50hM2t0ix6qw90hg9CnogKWfHOmhEajAS7Cn2FyQxbZByDp
         QaqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765618848; x=1766223648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GlXqF9nhSvIgkdEsUbMZ/tQ2h8iuKeKknEMLOxVfXsw=;
        b=RS+o4NF17C5jsj8PDMZgmWUFdxbkRTBvim14BqqiiSxqd9AcOuQiY6or3ga9s2u7eg
         LXxf5cPvNUpj2nLF2clXjYAxf14Oq6r95SomBi7qqvGfG/ypYWXphyFPv3PFVoCWvk+8
         x48XMjz3ZIObsRzNaJopllHQeBhHABzQtYjDQDfziw4h7tLb8pf5Ah8brCsxEbnwRRHG
         j+J9C4asQmUidJQWBoOiFuTCHhHd6t+Isz5tJ520A0EHScZjsgaT86PJmRjKYUA3YRnS
         eZmZ7y4UtIEUKdWgwuUJNak3nwdblguxSxI5moFfBaqfaSRuwg/fQz26HLJn3sy3TQ5B
         ALXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrorea0A6wRWbx8VwvClD718wYhauO1exJlhNrs/gUbq2pNwHbhCH2iIKmeMuFTKRwqDvGxtkZ13q4@vger.kernel.org
X-Gm-Message-State: AOJu0YytsrAusigt/5yVFwYWPC/bO+4lXRpQ6N3oBfzcJZN37+yN+G4W
	m4ZMAC7QVEyKu0iTODSFqfo/JiYS3Q8q38HWYhB11Cp8S4Gtl9HIM23T
X-Gm-Gg: AY/fxX6KXeFwghp+awww8PQEiTUduJI4D/7Lt0L4orXi9oVgKPcBk0ATadoNNkYWNrd
	kSrC3cQthWWArMjORK5WKuJYqEhkr61T1NDQVm5HhsiGsf/lBLkzYF1coo+bfJShXUh4H5Cm5h3
	/t0UkeNoGvLuwiTSFPLo9IZIHI6YyxoQ7jYGVR+XdbfuIzqOzY21tVSl2+jgf5egy2uG/f+g1+0
	STUrlpR6SNdDAGhTTndzCI4ah9+uuK7YgyiCfjMEjyO2HNgJQMQYPbJ6ppvT4jEz9xGXg/yHHZS
	Z6WYg1Nrd1L9jiKwcj3OItu2pefn/ERdX19+2kJh2pDeZtEUiNysm8O3J+r4mJGbpPm6zBYQJeY
	lRJG59L/PkRp//8ePe2kkUskNj8EarkP1PCFzmKCqLqiw2Icu5vxCnDwAZBqrmzUABu2rMck/h2
	97pRkazqkP6mx/CNLP4q9I3YaU9IIgOvflqMgBT/SRqnIHXi5H8kqw
X-Google-Smtp-Source: AGHT+IE3dHo7tKyXquVMXM8M5LvDb/NQv3IV2NNUcYlrcgrWD7s59hZ5Y0Qv8n3Nsfl4CN4sKLfwbw==
X-Received: by 2002:a05:7022:5f06:b0:11b:9386:a387 with SMTP id a92af1059eb24-11f34c593e7mr3132632c88.42.1765618847882;
        Sat, 13 Dec 2025 01:40:47 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:3478:9150:d4be:149f])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2b51b2sm23455386c88.8.2025.12.13.01.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 01:40:47 -0800 (PST)
Date: Sat, 13 Dec 2025 01:40:45 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Fabio Baltieri <fabiobaltieri@chromium.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
	Tzung-Bi Shih <tzungbi@kernel.org>, Simon Glass <sjg@chromium.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.orga
Subject: Re: [PATCH v1 1/3] Input: cros_ec_keyb: clarify key event error
 message
Message-ID: <53iuqpw5qvdan2s5hegbeqdw6oyk6eygdied5j7gqbatmmdd3u@gpmn23s65rci>
References: <20251209154706.529784-1-fabiobaltieri@chromium.org>
 <20251209154706.529784-2-fabiobaltieri@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251209154706.529784-2-fabiobaltieri@chromium.org>

On Tue, Dec 09, 2025 at 03:47:04PM +0000, Fabio Baltieri wrote:
> Reword one of the key event error messages to clarify its meaning: it's
> not necessarily an incomplete message, more of a mismatch length.
> Clarify that and log the expected and received length too.
> 
> Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>

Applied, thank you.

-- 
Dmitry

