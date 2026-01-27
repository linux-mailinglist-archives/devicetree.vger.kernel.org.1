Return-Path: <devicetree+bounces-259985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNgMHTbYeGmftgEAu9opvQ
	(envelope-from <devicetree+bounces-259985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:22:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8DA9695C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:22:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4027F30045A6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF3D363C59;
	Tue, 27 Jan 2026 15:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W3yan2P/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44C635EDDC
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526730; cv=none; b=lRsEE1XXtP5dEkmVmOBvi2kPoVMV/N2L8Wcd2/43xZZ5B2WNuc3nm4by+4cVEvoYLZslgDJ6txbSyslXljQH/W0Vn4SUQzglrlMsGbGBXQLTNadQ2cHMOoPBWbTdWsYBYozoowQf7TqgAKUqELReYsI2PPkfw5+AMsiRUjXIWrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526730; c=relaxed/simple;
	bh=Q0cKqs0Dz1obaEFFVDj8DAU+DC9JZA7AYb0lIuSwGY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=um7R/NulJDrk9JpLyO3Uxq5AVB+z9dzSrpqc53N7JTslmy/xbxEMUFAIfD6lSB5QhrDUy+k7XMkXjEOfH6xw0AkXTdwyMFNIhnPDgtMqGf8/cIcdAT4lQd2OFCtl06rNjpQFuBMV6bBbxFZhNV2XeF6BWH3bNbcFzKrm2IKgEtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W3yan2P/; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2b704f08e73so2825522eec.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769526728; x=1770131528; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z9zCVx2BWe5mnavK+mjSCOB1GzARJ9mP4Z2n+82aaf4=;
        b=W3yan2P/gMAHlxzzJLW1KiccBJLSrALkYwyCrvnOFksDW++Pml8uHBhmsOYTDBqIlg
         ybA6xAAGcMMBjBD/44BcvulDyLprj2R3CpjyQXq9DjWmPRDOPCGT7hu5z0UnAP44XlMe
         imhETc9gUtnWVpURzfPpTikLvXQLIB4a1jxW/u7AQ73SGw8NKa57YCmkl+Y3ywjBoh18
         BwOdofgXOWHvAiHvpzNBeOI3xlioZgq8FsM9ESwCDEry7Ze87N4cMilffkIb2UH9E1Kt
         WLK4PHb5v1vrwt1VKBmpvOcMScuPyykhIc8GgZGLYXxOwBBeGnWFGmJACxnBsoGNF+6r
         YY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769526728; x=1770131528;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Z9zCVx2BWe5mnavK+mjSCOB1GzARJ9mP4Z2n+82aaf4=;
        b=B3GLwceDRnGMbsjlPONpERh4/xHDj05/JiX6s4Y2TVrSt5voDI8PxAGV+1skbogU9b
         XRHbtTygijCWhkecUk2kkME5g8hpm2FmZPI8DwtN68I0l6rxnrq3SlRFF0v97EhWCKUF
         b8CaciowVSz/+xGOD2FbFZQnNxAyyYR2r6bxloqdql+I8fdNuK6VI38hkxATtmoKZmGi
         /EwX3l9BBPo4e6PLTwaLMchMW3rS+l+yvXM8idN4vjT2cih45rbM5AUR7nVfZsnlQ0t6
         UUAHKPqQS/IZNBjmPZ3+E7RmOZLFYPzJPCM84iLbOw4jAFr0jtD2KaVZooZxB1ZYdtGw
         0Mgw==
X-Forwarded-Encrypted: i=1; AJvYcCUahv4Xc+n5VBk1DvUq0v21vZLH/AIZKtcIk1vWbo44IRnqRtPsFHEkUWpONI3hf31t44VmaYiVicgi@vger.kernel.org
X-Gm-Message-State: AOJu0YwgCEPSpN5TXcCs7XRdLv5Atf4tkXs7ct0SKmtsup0mZ0qn/2cw
	AMPIXZpTWCQ2BUaApQ9u76jn++bYVqG+RUcxQWAYgcW+H8XEN1YtqoA8
X-Gm-Gg: AZuq6aJg5lGYVhQb1OOJjZeTP+PENLMB6LpKNsNP4JRGvdS8dPRjdvBIgkDvhDgDAlw
	T9yFRGlIFnLsSXH2oauuprVJ5FL+rXy8WTXZ9Y1gk+fRCmEZTKLHlM8S+86NAEd1Cen7MAh6k9B
	oUunzzc1MFnJUwQcKVeliGivZw4j/Shzh8vZR/oONIVlVtiCnkYaoLJwCfrWZj5M4Cu3QikpnO/
	UYHUmLn5Jb/DEEtKE0O1JJXBzGRT5UED9DoiqEaiZ05mwmfylK+uxTydoeye+s/Qu4750aez2ep
	Nsdr5GXHuYqz8+/dCVHDoV547L0yMQa/QonWg1Cl2oAMxoFi9FO0Vm25yo9cHlzDrZR6BHw4PUt
	Xur1pfHwF28aDRgmKEiy1eikN/IxutSslaMXHWbbd5x7QXw1ykb0A9RVtAmoZf6qngH0YwYtSjm
	seTAe9RyI2ovRTeiY/URUOcREQ
X-Received: by 2002:a05:7300:72cb:b0:2b6:f13c:8d58 with SMTP id 5a478bee46e88-2b78e977fadmr1460659eec.20.1769526727776;
        Tue, 27 Jan 2026 07:12:07 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7987cc01csm493102eec.35.2026.01.27.07.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:12:07 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 27 Jan 2026 07:12:05 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Vasileios Amoiridis <vassilisamir@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-doc@vger.kernel.org,
	Vasileios Amoiridis <vasileios.amoiridis@cern.ch>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: trivial-devices: Add hitron,hac300s
Message-ID: <b4c150ce-1570-4b12-82e7-62b699adb377@roeck-us.net>
References: <20260119190806.35276-1-vassilisamir@gmail.com>
 <20260119190806.35276-2-vassilisamir@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119190806.35276-2-vassilisamir@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259985-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,roeck-us.net:mid,cern.ch:email]
X-Rspamd-Queue-Id: CB8DA9695C
X-Rspamd-Action: no action

On Mon, Jan 19, 2026 at 08:08:05PM +0100, Vasileios Amoiridis wrote:
> From: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
> 
> Add HiTRON HAC300S PSU to trivial devices since it is simple PMBUS
> capable device.
> 
> Since this is the first supported device from this vendor, document its
> name to the vendor-prefixes.yaml file as well.
> 
> Signed-off-by: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Applied.

Thanks,
Guenter

