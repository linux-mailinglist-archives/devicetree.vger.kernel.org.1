Return-Path: <devicetree+bounces-40256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F9684FE22
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 22:06:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B96D1C21B62
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 21:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398AB1863A;
	Fri,  9 Feb 2024 21:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="xkE/m40j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00D717739
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 21:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707512754; cv=none; b=sMnBQKZHxlzqMQqKwIy6VNw9fe5DAzoLNfGYXy8ubeML9EsvqxlhRMOb4sMo8bGpRMePEv1CZa5cJEUoMQNXtQejU4HULf1UMNgNM2Ry9PT+rsge32e8x0wAWeg21XfZ/l5t4vzF98++63CbSQwSTr4tq9rIfvANHaNHRoXgdEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707512754; c=relaxed/simple;
	bh=fWX8AY1UCsAO7A9Rl5Srx2ebyrVS3CEaNUQK2IZKBWw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZRy5tQG4qjEILBdN+Ej5BVt0+uG9I1vk9fsBqVgQ1nCke96oLV7+3mAQ7cCt7h3gIVJ3Y0JBk5n8iZBqmJVSb7/cUxjw+pkkzoFmUGowyuTU/VFiP2s/Bumd5hDlslHay8rzYAHiO4525BwQiaxk0jmFixkG4atnEHh+livpOuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=xkE/m40j; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-42c2591e7aaso7660971cf.0
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 13:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707512751; x=1708117551; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fWX8AY1UCsAO7A9Rl5Srx2ebyrVS3CEaNUQK2IZKBWw=;
        b=xkE/m40j0myteCeuAXkuUT8lnEN4ct8CDu7mmbTDAT1CMQe3r8is3167wYTJir800a
         R9UEZtfTDZiHt0/ODAi5VOq3Yc8qvvj2hrWM0CbENgWjHiJrWUxT/eHp8lYE6/XfqpHJ
         WkuxnKVBcpgvMMpQNICP4WP0PqNZuiVNU6AyEgzk2uYlwxb/Jit5huKkYxsjbtYFKgNO
         R8UB/BB8BfvKb21FK253U3NJiSyfJjddJySGbHFoU1KDKAznofeogDLpWLzQ5yOVedoG
         m8+cx6f20TCO8lyhoop27z4JFeHtNMSPCj/LJDufWD9yTCSI+kiunMtlPP8onE6zn53b
         k6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707512751; x=1708117551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fWX8AY1UCsAO7A9Rl5Srx2ebyrVS3CEaNUQK2IZKBWw=;
        b=TpHj9bxg89u6VJxWwS+2fYt7k5o5HVTpTrcEtouT7uc0r7olJdT2keLQcIrtQfe8vK
         7Rj8jlqosJyWRJ3Z7TdvDLafQU0cdTY5rdLGuLBgdQIH1qD5G1SdNMfUohoM7s5AZ8pD
         8/Kcw0lYyS0t4uiGrQlZmSOtN0dIR7g8d/EsJIKDiFOrDgtP3PREkAy0av7bpMBpr1DW
         AvzeKjuQDQKzBavxkpwtDl88W8jU8AwTJOybG7+xQJIbdyzxVRZ/lZiuv6BSarkFlr+5
         zFgFAdOUyrabSYPCtPgM7iIJtcWg2CINiK+qpxG1VkTo1ulJSAYYrvOJ+5r1FvXhqH6r
         uiDg==
X-Gm-Message-State: AOJu0Yw5U8748kUjCfeSBvx/S2U3Rl3mNA2t4VZ5jsRNsd1G01W7LF/v
	3/KFz5RjbUcnHeoS6aBkSurXlmjyD2SyV6P+rrfUQIoHTUWGeR9gHC3QnA0th5/mTloCKob2w2E
	Fr6wNX/xKqYeYx2YwhXe/YNYpAjS+KLwhHDO6
X-Google-Smtp-Source: AGHT+IGs5gOcnQQd2dq5dd2RpG8BY/CC0Qys6/UWioQgwTa/o34PsoRm6jC/jXHj8ljZ3lVgAqg4J2Flc7+R3ljGXEQ=
X-Received: by 2002:a0c:e351:0:b0:68c:bf1d:70ca with SMTP id
 a17-20020a0ce351000000b0068cbf1d70camr354954qvm.43.1707512751398; Fri, 09 Feb
 2024 13:05:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201044623.374389-1-aahila@google.com> <ZbuEsltcMLNn4SyF@smile.fi.intel.com>
In-Reply-To: <ZbuEsltcMLNn4SyF@smile.fi.intel.com>
From: Aahil Awatramani <aahila@google.com>
Date: Fri, 9 Feb 2024 13:05:39 -0800
Message-ID: <CAGfWUPxLVzziWmwcfqDCfWuVM_Gjya4AzTmoqs1xTcGMXsRorA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: i2c: designware: allow fine tuning
 tuning waveform from device tree
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: David Dillow <dillow@google.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jarkko Nikula <jarkko.nikula@linux.intel.com>, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, Jan Dabros <jsd@semihalf.com>, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Andy and Krzysztof,

I think you are right and I can use the other DT counter, I am
currently trying to test if they work for me.

Best,
Aahil

On Thu, Feb 1, 2024 at 3:49=E2=80=AFAM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Feb 01, 2024 at 04:46:22AM +0000, Aahil Awatramani wrote:
> > The Synopsys i2c driver allows a user to override the parameters
> > controlling the waveform using ACPI; this is useful for fine tuning whe=
n
> > needed to make spec compliance. Extend this support to the device tree =
to
> > allow non-ACPI platforms the same capabilities.
>
> DT has different counters from which one should derive these ones.
> Can you explain why existing bindings may _not_ be utilised?
>
> Without this very justification, NAK.
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

