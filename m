Return-Path: <devicetree+bounces-273661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHmILhdVsGkJiQIAu9opvQ
	(envelope-from <devicetree+bounces-273661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:29:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1AB255953
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:29:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE10130117CC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5295C3D16FB;
	Tue, 10 Mar 2026 17:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lhA7hwQE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09ED13A4F2A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773163796; cv=none; b=P7zjDA7tJR032ewPNvqW2hmlbQ0NHkxuYMMZE8D7j7982yR3uymqwUT8n5XmAEjitttYPYHZNqcTOMPYoyB7lvq6HwiBu21a7NxnIGkdRnaD5SY3b5wWm0OPRmUDD+mvp+pEOy+pTAcKTu7ChbeghWo2JEukwLQ9tlxQSlSR7Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773163796; c=relaxed/simple;
	bh=l40j+jh2f/kpVEDQ2DTL5uvYSW5+99uEq+XRihxp/6M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kFa78GufrkmLw9ygmY5Drnumf5xgrXRyv4kWyypNNAUEwQpafNc8lZ0LG6DNfPE6+MTRzYFV5Qw0S5+xss74rQXFoQF7jU0AtNqlSRrFitfypaTnrp0ymKnjdNRSLBfeXMZJd4/vVMoQ/zfNNq/5PJZzMZMJ09S5VT61KM6fTwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lhA7hwQE; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2be0711f493so90928eec.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773163794; x=1773768594; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gFoQjCDEAsTOhIGMONGAgxTqqQAqRiz05x57wOuY6Hg=;
        b=lhA7hwQES2dw89ms3TJB/CliS8ApIqv2UUYA5DCObt0H54sBE//ys1CbQluHLbI7IT
         eDC3as/v+IrKYZ6A5U0z+vY53P8KzguUwSf3+IPZzms4ISoa8GVe6I9C+kNoLshPSoCi
         Qoe2F5eCmQhaYHdfBxN+XRQDsqUzou1kY1Lnm6lIulBgR3yZpQ+ym+R4RZ68wPOUMeK0
         /pB4V/WnpEWwb6qHs2O3aNwisRiNobBjFMOH1HKP9yg1DlIi1AuqiM0K/2Ksq+uhQy0Q
         B4G9jb3WNr0NE5qBnluFxXzFRc7mJHTt9mt+9q9nNCsz/bNPga5nkc3E4z5XamITjkGZ
         Ru6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773163794; x=1773768594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gFoQjCDEAsTOhIGMONGAgxTqqQAqRiz05x57wOuY6Hg=;
        b=xHq7gUUAOWDTrHIi+fZBl9Pnc1HxCYMEkkKezi66WIdj421U0wo3stzpcDsvOW/rT4
         jk2BvILOSQm/maJqXZJlQAMSXfOz4MvFmyl6S/op1SvRCt/smyM2JuoHTsnbIYeotPfr
         EOiRLCTcyaXnyCoEaXiNV4YKp7uwiPtRYcGvX/BXThYh01NMAz7oq5otEi+NV6YHh2SR
         lgsrRjal/sxU1duguILmcWIVwQJ4aC7awxuWaDdWDj4Smu4GcoFHRKJlaenxUvu3quu9
         WwU4gon1r/j2V6TKjqFx8l273+uSaHAtepyGp02gpEvLdBbDpatT93mppcsHOJlE69fY
         D/VA==
X-Forwarded-Encrypted: i=1; AJvYcCX9VUugutPEkH3kEkr9xkIQg3NnZcP+cnq8eSDpWfJv11muIpC7uT7FI/deneegY81pczKps+dG0gQU@vger.kernel.org
X-Gm-Message-State: AOJu0YyCIPmPSTXaDKU0mlf0xgbLz87bGwCIjq/l9s2jEMhUttWX29Cf
	shfvfgVBTteTCLiNbkJPmjxqSLRtDQZHrdAcElMvOMFV49g3HSFuQNWi
X-Gm-Gg: ATEYQzw34l2Z/31Ns4YXstBXNaGJDcI4ZkE0dYLGhZzYCmYu7J/U6MIkrcIzQN/E7Dw
	7wgUGMQ7Vt9NcOzXeJDf3DLpPCdjITSjVlKuRV0U4/BzvWQ/PwOnD+A2sOIDl+e1YwiI7H+s38i
	/oTNLewce3xPAg0hp3fmy8mwBvWN/6rNO9fz22t+d+UjcI/eNCQEoDZqZaummfo1yXOSDaN5b6y
	kAf1CrZPOXuQPuND8lbvxcCI/Sv3kFfKYLso1hrz/vFdygJugrIe17bqhyqE7Q1CGkcK7aF/5Gv
	h/3DiBEowe7hNs1yJfVYBFkNCToAOM7eCbIe+7Lx+EsUP7VN7cGTXXdj+vvvJHOvvSDKHngf44V
	eNSlrmvT4imuuxVJYMl9FDm9B+blj0SCK7Y//SnjYAQZHEq9F3bKjaRhuen536yxu07KiZpuqpW
	dgZUjYbSXLZfcalQf3POwQGXm94PX8xVFNuR1fPyZITT6AzrYb4amwiCe7X0ZjYiBr
X-Received: by 2002:a05:7301:3f19:b0:2b6:bb18:c70a with SMTP id 5a478bee46e88-2be7a28d93cmr1648507eec.15.1773163793971;
        Tue, 10 Mar 2026 10:29:53 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:9:a7a5:8370:70f2:4b53])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be8790b198sm711734eec.14.2026.03.10.10.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:29:53 -0700 (PDT)
Date: Tue, 10 Mar 2026 17:29:50 +0000
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hendrik Noack <hendrik-noack@gmx.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ferass El Hafidi <funderscore@postmarketos.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: Input: Add Wacom W9000-series
 penabled touchscreens
Message-ID: <abBT3jZtpey4-9M7@google.com>
References: <20260307181557.66927-1-hendrik-noack@gmx.de>
 <20260307181557.66927-2-hendrik-noack@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307181557.66927-2-hendrik-noack@gmx.de>
X-Rspamd-Queue-Id: 5E1AB255953
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273661-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,gmx.de:email,postmarketos.org:email]
X-Rspamd-Action: no action

Hi Hendrik,

On Sat, Mar 07, 2026 at 07:15:32PM +0100, Hendrik Noack wrote:
> Add bindings for Wacom W9002 and two Wacom W9007 variants which can be
> found in tablets.
> 
> Co-developed-by: Ferass El Hafidi <funderscore@postmarketos.org>
> Signed-off-by: Ferass El Hafidi <funderscore@postmarketos.org>
> Signed-off-by: Hendrik Noack <hendrik-noack@gmx.de>
> ---
>  .../input/touchscreen/wacom,w9007a-lt03.yaml  | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/touchscreen/wacom,w9007a-lt03.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/wacom,w9007a-lt03.yaml b/Documentation/devicetree/bindings/input/touchscreen/wacom,w9007a-lt03.yaml
> new file mode 100644
> index 000000000000..feb87f5db39d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/touchscreen/wacom,w9007a-lt03.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/touchscreen/wacom,w9007a-lt03.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Wacom W9000-series penabled I2C touchscreen
> +
> +maintainers:
> +  - Hendrik Noack <hendrik-noack@gmx.de>
> +
> +description: |
> +  The W9000-series are penabled touchscreen controllers by Wacom.
> +
> +  The firmware of chips between devices can differ and with it also
> +  how the chips behaves.
> +
> +allOf:
> +  - $ref: touchscreen.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - wacom,w9002
> +      - wacom,w9007a-lt03
> +      - wacom,w9007a-v1
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description:
> +      Optional regulator for the VDD digital voltage.
> +
> +  flash-mode-gpios:
> +    maxItems: 1
> +    description:
> +      Optional GPIO specifier for the touchscreen's flash-mode pin.
> +
> +  pen-inserted-gpios:
> +    maxItems: 1
> +    description:
> +      Optional GPIO specifier for the touchscreen's pen-insert pin.

Looking at this again this has nothing to do with the W9000 touchscreen
controller. The behavior is applicable to any device with a touchscreen
and a pen.

Rather this is a generic functionality/policy to put the pen
interface in low power mode when it is put away. I think this should be
done by userspace through combination to listening to the
SW_PEN_INSERTED events (via gpio-keys driver) and toggling "inhibit" on
the touchscreen device.

Thanks.

-- 
Dmitry

