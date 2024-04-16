Return-Path: <devicetree+bounces-59681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7FA8A69DF
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 13:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9A412830A2
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 11:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575CB129A8D;
	Tue, 16 Apr 2024 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="byrwXn2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CFE129A73
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 11:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713267933; cv=none; b=FWhV+SyLn3vv5ptg1oMZYTt7n9AGfjzcJPxCDzxErLhvm+ftbrpHJB5/TGtGwumY5kHHyktPPYLQIuEpx2/ZFlKZspc5omUsVxCrv4LqofDRf47fsWAHX3r6QTG4UI6umW2OCRfZYxcRJ0pMOO1rtFBbxfM0xBYo/N7294zQy4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713267933; c=relaxed/simple;
	bh=dDlCzkzdCcNFshIRjsJjUBzP1X/mdztmU1oPjV+q8lw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZL6QzC+V56pWRY2Ry+G4i0lF9eO8B7xgb/9w9GtxDCcokwGej4bfLwFZGqrkefKi3eQ0RPZg6P2bjpk1kRKoOSO/02o1vkM5tJm5LsDgAdCP2cWvp5+zCpdkCk4ayzAyFFC9SC6yCG2aUjZJMoPO7QjhPvYxY4Wr46J/dyvzt/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=byrwXn2o; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5aa362cc2ccso3329568eaf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 04:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713267931; x=1713872731; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aNdL72WRHKwu0pt/55XuOUw+WlB5anBc9z5sZqU2AYA=;
        b=byrwXn2oXs74FHgM2rHpYTv4oeFBIOevnHUUQqk0ayo23lOIwgo6cu/G3doJxDBsfG
         expba0IkmquRo8nhwJji2vFHQTTBmQyzfyz/dvwz3bbPDXMS9PzCihbey6q/7vhgnLvK
         /3RFl+oc6cE75QNSJ1PF7dvzYfsSqulDEHFgDpBNVthmWZm1ma/QNrLsEPhkbtgABhpP
         0c6eINkHQc1UJDreXMQPlJ21yElaGuzg7cJ41hX2jCErnAf/7UrhhjHscaKFDY+uh8ve
         GLkodtlJzvrIrKqHrXbIKBKYXw35WaJcVcAzaAMoaGmw37f6Mfn4t7ZGP4JZihVU3hGO
         WB6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713267931; x=1713872731;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aNdL72WRHKwu0pt/55XuOUw+WlB5anBc9z5sZqU2AYA=;
        b=tpMu/cv4d5gHXPNTg8RFerZ9TFCmSdDf6j+xQZuQVGfI05/+qIhZiKKiOk0ChVLqJm
         c8sl5Q1gmbfvYBGZlqeO4nwTuqKqWy9wBBrLCg5g+zHaB2iKuIEn+gvhl8CruBsNigQg
         zyHTjSjaA5VKe7TLCR1zkhMmrpScjvETuz/SRJcEte89Zj2dAJqoWHIngF0QylXL2kpN
         mF1n7R4emK46n40Zx+c+TKVevN3HC8M65Zhowk4Pstg1Wi55XMpDQ+7e4AIMVFETcHtS
         m/zUAt8O2PolGVY28OsR+9AfGJln8lT4IJmzCmpqPCHYPN/3G8G2kCkW1Y8mk17dQKvL
         BVcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZuVTQAYiR4eUYw+YCd7iZDsK+4O6gcQBiSBBK+4yaOXZrphW3uZDhhY6s/X96DZmIzJ0k5j1je1BPFrT3IIcEw0rqF0eHfFrQqA==
X-Gm-Message-State: AOJu0Yy4kbTZtEYeROZi+5n2nDCTnuRvNuJywrVKVObV7YO7H/RAcd7P
	ZjITUiB6Wafsfl2ANISX0VNJV73FdcH3et88N+67kBpx3v9xRLkgVWkEzKmI8tI6q0dYY6aiBIr
	OUW5PaQv0p61qWzKObl19fPx2aYIT+b9uXcCXfg==
X-Google-Smtp-Source: AGHT+IHxJp/JnOY3GdAw5XogqzJkAdg7j5verXH36RVlSMIf75LFqNIKEqK/67ccEbRIuuWgR4HOxuNMXRZG6yHWE5I=
X-Received: by 2002:a4a:8c0e:0:b0:5ac:9f22:2686 with SMTP id
 u14-20020a4a8c0e000000b005ac9f222686mr5969583ooj.5.1713267931027; Tue, 16 Apr
 2024 04:45:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-5-peter.griffin@linaro.org> <ce8275b0-efa8-47fe-a4a8-471fac9afa10@kernel.org>
In-Reply-To: <ce8275b0-efa8-47fe-a4a8-471fac9afa10@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 16 Apr 2024 12:45:18 +0100
Message-ID: <CADrjBPp2Y0tgXr+8DcgKOND2dLjUsNu-J7ob8tz=SeB4VeZ04w@mail.gmail.com>
Subject: Re: [PATCH 04/17] dt-bindings: phy: samsung,ufs-phy: Add dedicated
 gs101-ufs-phy compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Fri, 5 Apr 2024 at 08:50, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 04/04/2024 14:25, Peter Griffin wrote:
> > Update dt schema to include the gs101 ufs phy compatible.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml | 1 +
> >  1 file changed, 1 insertion(+)
>
> This should go via phy tree. DTS should not depend on other subsystems.
>
> If, after resending as separate series, phy does not take patches for
> longer time, feel free to ping me, but first let's try to go via phy/UFS.
>
>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for the review. fyi Vinod has now queued this and the other ufs
phy patches :)

regards,

Peter

