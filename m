Return-Path: <devicetree+bounces-273831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLRwMor5sGkRpQIAu9opvQ
	(envelope-from <devicetree+bounces-273831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:11:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4941C25C430
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:11:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BE3AC305CA04
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECDFC32BF44;
	Wed, 11 Mar 2026 05:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nkXx7CNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1641F2B88
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773205893; cv=none; b=rFqlKszP8NTBDavK8TH/Eyg4/AvalPg5GFOPM1UT43yZjdu5tVhcRxksCFM/1Q4uWmZe23/eSPOyIUFewjiGQEyQqcDoR3TTCYhAfyJfjoxifGhlQw9+XD/2P0emrNYJYWWdur1xBDfA0RDhSQR74ajqyhEOprLui4+48eunLWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773205893; c=relaxed/simple;
	bh=SKQebgFHBXfmM2lGdrhEr42Q1f+W474nmfBE0BMUDwU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WU1dFOfb7kYzONyGTmbjNrTKkj+iMh9Q9bmrZpqpYGRVR6vBQWHmRlq7PbYFbCXQKEWuUcWMAEZCuU0FfFdr55eT6RT+uwjRoAWCi+LT9zwGwKLRPLltgcZsXPvFV8taieSHS/093/fAda43KDSy0gtMzjknyTSZcJfgK8HOEsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nkXx7CNI; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-128b9b7e3edso574021c88.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 22:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773205891; x=1773810691; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8PBbyOmDB5lQs1yLkLN/9EtPkXrISR2EjJXxH+dMHsM=;
        b=nkXx7CNIsPBIINWlffccvLIOHCQEPfVZJTDBY3QYThNs0vdPcWKFl13Id5VYcuF9lX
         ZSLZNDLJk9x0tvTx6+G4UXPlZsziM1cx86AvYgB7Asr4FuMT7cYst/ZQX9GLAxJgXucG
         5Y3R5gyDxl1cblWgwGWf7/VHGNtDq5hBiU0UWQG2JgG5wviCVxA3+DA6yAHSjNgJ8ewI
         rUED84wid8lBKNXpNlmvu5SNBi6IudF/CNvvwEYVwhURSyzyn97zBwZKXe4DTubxrJ/7
         EWHIcH7ISyf5BR0+IjqzpE/jH1bTEKo1hdBRaq7Gt3waGOwapkn4afTETFJkxCpIxyjJ
         XLAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773205891; x=1773810691;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8PBbyOmDB5lQs1yLkLN/9EtPkXrISR2EjJXxH+dMHsM=;
        b=d99MJ485A9XH0c/uoiS+Scjic7mFsb27GttU2FmMExYGJ2yysBNZMEaTZBIKMtHhUH
         7/fTdwp6KBe8F4OhTqLOsjM6Lf9crKsDBqn+QdB/DMEjTsQwFIvUUumMMmVFpInHIbvT
         DYFkCWuMfgqyWAZg4qrB3kGVzRdXccOKYmD3+fU4m0kWQdoLjpr+LXjR427HCjrsrpH9
         0fCwZd3qJk6OiHqsz+dr8mZVoFJrLjv7UaU2fma1FwrBzX0UPALObLdsEYUP7BHkhzYX
         I6lfuSeflw8Y1g91nWEZZlNIMvkgnigDdY75Q7U43L2kaNv17pFOC4bZ8brqyPEJWOPO
         cOAA==
X-Forwarded-Encrypted: i=1; AJvYcCVcYQYdtJSoBv2QcHA4YWov6Tv0X1I49ILkf/Wii+L84XxmyfOgh1X+GkQnCEkX702CXVZ8LKx156M8@vger.kernel.org
X-Gm-Message-State: AOJu0YzGnlBx68G8Sz48LQQhNoor1achekaeZTrdBpSUtAtAUFMMdp9r
	Hh91CVszW2JG+/pI5xSardAKJLr21gsw61sCvcYw5m4+NVyHncN3dnnI
X-Gm-Gg: ATEYQzwMr8qfMRURTHFvdiT6gPJdpA5mDDLq9/UBU+PbW5yd5tCIZ6U1z2EDSnn/JmH
	XPZ/9PXUwE3BBjjuHOdJkVwHwhkrfw546+FDCKRM8h5YOy2amoLMd/pcWvZ9IujXDjVxedvnZ42
	iqZ1xO7fNrZQrmNxllb4oWNGOmvaQEWicza3A74Cp8yCcO2OgeJd/trsXDb7rPuYimoZ1iALhtd
	g0wxKrkJAlSst1a5Wsk3wlu+P4z5gsPIMjrWlTKcbJqCQ9wcuNWO9LupxuiCeM2krKdw5lrV0hs
	wl5t2BwwI3azXFNprH/WdXEMFn1KmkOpGxX/tkKg5J1UB8nMC6GysvhdQsBeE5khUMPbZXScF3z
	pZfE6EaAIYhDD/qhKdGCatVAR+r5fR7hUKXEqnItRbC1+Tu7TTBZtj6T2joOike8EMoSn5NcGMQ
	DLmHSJD8P2zUZEZTrqGYDNkgNsauQAdgv1i+HzhV8bjSwrNUenjWtkrCT+NfrHJEl/
X-Received: by 2002:a05:7022:501:b0:123:331d:bdbb with SMTP id a92af1059eb24-128e781fe8amr639411c88.22.1773205890451;
        Tue, 10 Mar 2026 22:11:30 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:6e17:9d84:ffa0:986b])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128e7c1ff96sm1369730c88.8.2026.03.10.22.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 22:11:30 -0700 (PDT)
Date: Tue, 10 Mar 2026 22:11:27 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Jingyuan Liang <jingyliang@chromium.org>
Cc: Jiri Kosina <jikos@kernel.org>, 
	Benjamin Tissoires <bentiss@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, hbarnor@chromium.org, Jarrett Schultz <jaschultz@microsoft.com>, 
	Dmitry Antipov <dmanti@microsoft.com>
Subject: Re: [PATCH 02/12] HID: Add BUS_SPI support and define HID_SPI_DEVICE
 macro
Message-ID: <abD5ZAsNOQ-wOkQ9@google.com>
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
 <20260303-send-upstream-v1-2-1515ba218f3d@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-send-upstream-v1-2-1515ba218f3d@chromium.org>
X-Rspamd-Queue-Id: 4941C25C430
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-273831-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,chromium.org:email]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 06:12:54AM +0000, Jingyuan Liang wrote:
> From: Jarrett Schultz <jaschultz@microsoft.com>
> 
> If connecting a hid_device with bus field indicating BUS_SPI print out
> "SPI" in the debug print.
> 
> Macro sets the bus field to BUS_SPI and uses arguments to set vendor
> product fields.
> 
> Signed-off-by: Dmitry Antipov <dmanti@microsoft.com>
> Signed-off-by: Jingyuan Liang <jingyliang@chromium.org>
> ---
>  drivers/hid/hid-core.c | 3 +++
>  include/linux/hid.h    | 2 ++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/hid/hid-core.c b/drivers/hid/hid-core.c
> index a5b3a8ca2fcb..813c9c743ccd 100644
> --- a/drivers/hid/hid-core.c
> +++ b/drivers/hid/hid-core.c
> @@ -2316,6 +2316,9 @@ int hid_connect(struct hid_device *hdev, unsigned int connect_mask)
>  	case BUS_I2C:
>  		bus = "I2C";
>  		break;
> +	case BUS_SPI:
> +		bus = "SPI";
> +		break;
>  	case BUS_SDW:
>  		bus = "SOUNDWIRE";
>  		break;
> diff --git a/include/linux/hid.h b/include/linux/hid.h
> index dce862cafbbd..957f322a0ebd 100644
> --- a/include/linux/hid.h
> +++ b/include/linux/hid.h
> @@ -786,6 +786,8 @@ struct hid_descriptor {
>  	.bus = BUS_BLUETOOTH, .vendor = (ven), .product = (prod)
>  #define HID_I2C_DEVICE(ven, prod)				\
>  	.bus = BUS_I2C, .vendor = (ven), .product = (prod)
> +#define HID_SPI_DEVICE(ven, prod)				\
> +	.bus = BUS_SPI, .vendor = (ven), .product = (prod)
>  
>  #define HID_REPORT_ID(rep) \
>  	.report_type = (rep)

Reviewed-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- 
Dmitry

