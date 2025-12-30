Return-Path: <devicetree+bounces-250483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26100CE98FE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 53313300312C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D82D2E8B64;
	Tue, 30 Dec 2025 11:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ew3JWeCT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6809F2D7DC8
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767094969; cv=none; b=WO3LN6jXj2hQr4B6dLFRyHLWb0x0k4WDxjv1NuicjT1tGXtAMAXou9B2vinTbGkYfczUizMwh4DairyCYBv8X78TZWgFUjASk+mENFVGf0WQU/+KQVuTPKVnQC66jV1H4nnudm1KYIoFzcbGCvPwXPGVdVgsmOMA69Zsh5NQ6GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767094969; c=relaxed/simple;
	bh=W1I5n7Y43qAPPmembYAFQ2bODbvz/MzKLDxex8k0KLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X8fPQjSHVXBgmTR1ps3B/BVIO0uwb21cU09V/qrBPQrNCyYGESBNHQKQsFZ5+XpCwIZc/5t0Wth12fG4eC3qsgqP5VsS9w1cVd2OXG4v8WMIeimvewWlAk54L4NBN4yXG/EBImgIp/Zi5ayJ/Dskujd1FTG2L0hYfmAfk29TQwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ew3JWeCT; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fbc305552so7817861f8f.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 03:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767094966; x=1767699766; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ec7rpaL2aGUuJsuasFfWfPs3/0VhYUl5PR3FKjXgrDs=;
        b=Ew3JWeCTIjkLSSMSM7XMcNKpcGxtgZSobrUNFvqPmD3BHjlXCGdWnPbxd/KEqGFSyz
         coUp0zJs1aK5PukFOSys5pc5jT72ELeuoWMKEXGOemoN62XaT24Gdi7RpbLUkGRyoHUp
         oM/R+H7iEg4t8MsBhwP8WdkJ7oeZo+gvG8Ppg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767094966; x=1767699766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ec7rpaL2aGUuJsuasFfWfPs3/0VhYUl5PR3FKjXgrDs=;
        b=fdWSm/hdRoU5161RAZjxzAG9IdSUl4Eo6zjxhrT59kr8+7vMQoo3Y3jDLEmEFrjN0E
         srW/H7otDpdjO9ttFdi5T00x00Vum+LyVy8cfvpEd12SgHnFwMU1SBQe1KuxRLqST6ID
         5xWGAFYrsB73ODyqbvmjBdzB7R0YtoJIyuwQwAi+bKOqy2k5mO2nE5pmGQfVOe98cLV/
         aN/dvcvQPMH/lpjh2JIemZalk7gdA+CZgLMrvdGoJAssnEMcoqdZ9rQRv7IWwWfAWDBn
         0x3izutjZC6aUhQHesomQzQWi6DLfgbYMkyq8afmMCSeG9/iDBPqRreVy8wDJz7Pv1yl
         Iffw==
X-Forwarded-Encrypted: i=1; AJvYcCUq3ok9PsJoLnifUiTb/DPwB2UarAoxZjhjAxHpi+3RuME/6IRXrUs9orQV4KOiRxFVCnC7ZUCCXqlj@vger.kernel.org
X-Gm-Message-State: AOJu0YwIEjwbXkL3Pk3ljwxXjzfnfgQ3IZh0Zq3hhZ9hv8eCqHwDhLNX
	2f6Lbg3Ntc1WAygJp2dwQ4U0MjTjU5/3W7FDfaYPpUXt7m9sHyLk7uhy38YFfK9xslQ+nvtt8ve
	aAdw=
X-Gm-Gg: AY/fxX5MwReByBTgBlZz1oe6AJE1u7tm5VeF49VXCqNUMIcwfbq+z+vJSF6Hv2cXhmn
	lJgfluAAoVAbFsfgdn3xWgwAMdFShlK3neTuhLechHQR0jCxXxZJoRiNQToo+FroNDQjHs33vBB
	NOZ0AITAcMf/1iITzZHClOEDe1eiNnlU8l5CEnMHSyT9kfRQn+8w91WxsPHRLxW9jNTfrLH5J4T
	X46zGQBsgjFEnhA37bQMaTSjF68RuXZkYO98QdgbIw3uEzBouTSM34SNjxQ0tnf+Sc4hNROUZTz
	nZqwMWZbtqyHN1hZdEoe/F5HQr2c3VvPGglOKc/rYSjP5RMA1SsgSdTB5Sg9f9FX7gAiaiMy9sI
	DOsj0sLbgQ06ux1FphK+DPK/4eYhtHr6TxtyZu/1JzIHSfGNsStGr07I/9iCPZFM4j8uKL6ulgH
	AJUyz2F/qGSVCLYukVATYZy7lr+gtt
X-Google-Smtp-Source: AGHT+IE1EZZ3iXjzIXqJjM6pUCinYXxs5mhQl9LTGmF+m9PMSBJUOFGdEr/Asv7D9VBeVrox2F4jkQ==
X-Received: by 2002:a05:6000:2586:b0:431:808:2d3d with SMTP id ffacd0b85a97d-4324e4fdcbfmr38901938f8f.32.1767094965729;
        Tue, 30 Dec 2025 03:42:45 -0800 (PST)
Received: from google.com ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa08efsm68411184f8f.29.2025.12.30.03.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 03:42:45 -0800 (PST)
Date: Tue, 30 Dec 2025 11:42:43 +0000
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>, Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: google,cros-ec-keyb: add
 use-fn-overlay prop
Message-ID: <aVO6syiW5uUtOXRi@google.com>
References: <20251224152238.485415-1-fabiobaltieri@chromium.org>
 <20251224152238.485415-3-fabiobaltieri@chromium.org>
 <20251227-laughing-white-dalmatian-f9d98a@quoll>
 <aU__uxDmeUq20Mg3@google.com>
 <0c01fa63-670f-4c82-aa74-dc855cb12a78@kernel.org>
 <aVKDJhVuOz-V9tb2@google.com>
 <c539aa2a-e9be-40e7-9b75-1723bdaf0a39@kernel.org>
 <aVKgsGwb9Rqteekj@google.com>
 <e0f7c2f1-c876-4e19-a836-2b1629cdabf7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e0f7c2f1-c876-4e19-a836-2b1629cdabf7@kernel.org>

On Tue, Dec 30, 2025 at 08:26:56AM +0100, Krzysztof Kozlowski wrote:
> On 29/12/2025 16:39, Fabio Baltieri wrote:
> > Sure so I guess this falls into the "describe the hardware feature"
> > category, so is the suggestion to rename it to something like
> > "has-fn-key"? That would be the hardware feature.
> 
> 
> Maybe, but then I would follow up with - what about "alt", "ctrl",
> "shift" and "fn" keys? And what about combinations alt+ctrl, alt+shift?
> And also caps-lock? And why exactly this has to be even specified if
> matrix map already has the FN key?

Fn works as a key layer, that is when the key is pressed the rest of the
matrix uses a different keymap, different codes. The driver has to make
extra space in the internal data structures for reading the new codes
from the keymap property and use them when they are specified. The other
combinations you mentioned behave normally, nothing special about them.

Looking at the input driver history the other driver that [used to] have
this was using a platform data field called use_fn_map, guess I'll go
with use-fn-map then (that one has never been ported over to dt).

