Return-Path: <devicetree+bounces-229968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3BDBFE29E
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 22:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF1FF3A7D69
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 20:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B34B2FB0AE;
	Wed, 22 Oct 2025 20:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a6GhyydI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9962F9DAB
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 20:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761164783; cv=none; b=ZDtE2iwWbgzI5zeBPMqv59xsuLJcJlAFMr9EMuQZNG7zawxjun5SqK/s64rLh+p4N2JJNIVUMLjKWg9+xWORPVDCgbWZMwrOXInabOxWq46LH/yaczlgHKD0sjHhdzGbAjtqfp/8zLJ8ZyydAIgGkYJAyPRTtRgNJ1AncJzxn/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761164783; c=relaxed/simple;
	bh=DN8wIHw8L2THEi4S5dHy5jflBlp+QDhGYC86piH+GyA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qh8bb6ib4YIoD1K3ckaDvspjX4kcEPRRdC9joGfntbErEVsfZjH1UUFoF1ugUURHWVEFL0oVCoQ5g8EI7gFAWG+9V+TIHQ6EqR3ZjYNHbM2CRqWQd58NkctDgWL9GWYWlnubQRl4dGs5L6wKXtDYl11+v/PXEU6Bh16ABu6RoQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a6GhyydI; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7a213c3c3f5so63174b3a.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 13:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761164781; x=1761769581; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8hAf3HpEiT48jV3m4EHRH16LKqqSsX+cW74wRjoqq3Y=;
        b=a6GhyydI27nchsOK3XzmQMxvgdrwjht6IYms4fXsm5Rou6wqUAUou3UxDDgWVcaMTe
         c8YHY+MXac52rT/giDlKOghlIXA2zHL6i7ydzQbQEjUxxk1jfp8W33CraOyQFwT73FPT
         y60oFTrbwMiHz/QtNW53RFxCNoJMhmhGvA8AZmKgqLIkgqxi5iW69oPqrTe94O0dIYmX
         RfGGg1fktM9XdWzVZiFnizEAbLvCyh7oHWRwotMdf5OvK2WydGKvIGc/OKI4oslXlSox
         Dui1yspkwGXPLNN1xpzz7Lg/e1oNO5NMmM5CkSkF/gSQpnzDnYvW7bmm1mv7ek+rHKFs
         S2LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761164781; x=1761769581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8hAf3HpEiT48jV3m4EHRH16LKqqSsX+cW74wRjoqq3Y=;
        b=a69zTlNNVxLBORGGVeezsCU+dKlHp5yN5EoqiCA20BfDW2a5+AS4ddrh0Ifb/0usTe
         FWChMOGWD0mAW5vZ+dZ+Q+iOZm8RLdH0E7aLG5dXS/fbINxlXhzgIxA44EpjIQeLn97l
         uqCTuBHkXCAUSCyt/Q4bsXB53/bQ6Jg2h0U/jK5asLBoHOQ8MhSUGsi8+yhjgCmyVPF8
         fMwy1thU5pwRP30CCazl2UQqGfyGkEZfE390Tzu9V5To1LP+uga/iWEKNIMXfx3CHMKJ
         KERTF6ipOWzvCiPo7bIQ7qTMBPvuVZN7L5sw7UyxHrXf+NeLCsDId8TX4JJQjzx2sayQ
         ra+A==
X-Forwarded-Encrypted: i=1; AJvYcCVoOWZMBQ6Kny5QbqQkr7Fr75Gnj9FbySNhbhKL2xFSoMKSc61ykB0VaovJeNbhh64ltJz6yEE+XRYA@vger.kernel.org
X-Gm-Message-State: AOJu0Yye88Ajbx4QPJi92QLI0ePGPaOIcd/glTa63i0KXAwyIM+mnVXv
	ycVep4hhiolfT33LddFwJfs4xdH3J5YmoGtqHw3yBjBfacm9Y0+jDx+w
X-Gm-Gg: ASbGncvX7mZXl78eVXrcKbf7jSfZqY41DsMSghJXwjgHpgCRrgrTV8muixgZq6ZXCwA
	TuLS0D8etdLSfNuKPG4Zz8bAhp1N38DKgs7hd1C6iGZXkDZ+1JXPyRPkTynrIYWdtHhMc+BJc7d
	WrxFXPzeFJI69mpsaXSAhnvPIDFOQeC/UzHetzOXBkxeQSkvcXlk9oq/xM3YfJfJxXhPCIU5/mv
	dFMJ241M7F5VPgX/zQasmqCYy8H+K+vau6srPRY6WMSHfqYoz+qQ22GDFGDVSMxJ4MXd7+jwylT
	F9AZZNVim4lL1QuvAQsHIk9l1pwQeEtTtGRnKW4OxnUjthUKUlbtZ4b+ipRk9yyoSfkgXZEv+2x
	bV1UkSgi8WAUHBHcMhN/cUrdxx/OaZXiqvA1ixh67Pt961hl3D8GtqQbh3rtHzSziMRsfa0y58a
	t7hAOh8fx4XF6CS581H3qYRrCz+c0YxOiTctLyCsE=
X-Google-Smtp-Source: AGHT+IEUWrw1/NIF6k2oNyNi5aIySqQPjcH563349gLGnf1V8S0/R+EqsrCwP+l1wUXaJawvs0BBZQ==
X-Received: by 2002:a05:6a20:72a0:b0:300:5f0:a4bc with SMTP id adf61e73a8af0-334a85bb055mr31514224637.45.1761164780878;
        Wed, 22 Oct 2025 13:26:20 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:53a9:459c:bdc:6273])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274bb37dbsm101523b3a.57.2025.10.22.13.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 13:26:20 -0700 (PDT)
Date: Wed, 22 Oct 2025 13:26:18 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Job Noorman <job@noorman.info>, 
	"open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." <linux-input@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v4 2/2] dt-bindings: touchscreen: consolidate simple
 touch controller to trivial-touch.yaml
Message-ID: <vv3bpf4t2fgj2iz3hbevw3u33phqitfd2x7mk3ow6iqrjownbs@gab34yb6o2ee>
References: <20251021201924.2881098-1-Frank.Li@nxp.com>
 <20251021201924.2881098-2-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021201924.2881098-2-Frank.Li@nxp.com>

On Tue, Oct 21, 2025 at 04:19:18PM -0400, Frank Li wrote:
> Move azoteq,iqs5xx.yaml, himax,hx83112b.yaml, hynitron,cstxxx.yaml,
> ilitek_ts_i2c.yaml, semtech,sx8654.yaml, ar1021.txt to trivial-touch.yaml
> to consolidate simple touch yaml binding to one file.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thank you.

-- 
Dmitry

