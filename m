Return-Path: <devicetree+bounces-195945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E095B03A5C
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:09:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43A007A632A
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E38723D281;
	Mon, 14 Jul 2025 09:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="Jmrg4fTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC35123BCF7
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752484179; cv=none; b=krxWJdTf+ocLcYW0J7/eq0bRnvP08HdTrKz6XPM71SHWqxyR9CTNCm88FnMGYHnl/pVG3xoCF6cBS5vUv7z5po9fGKRWAGVU3MT1BhDMYPtYGOw+zdTlElRtYNNqM9arWr7kwQ1zydGtzZzxNKRI/8CQoGNHKXApFn7nkcZoZPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752484179; c=relaxed/simple;
	bh=rIsTjh4GLVLD+KMCZJr0+NzS5w/OyX/hLoA+6UwSt8A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X335EKjCjEiD/Yav/O3SlYohXsRhChNmZOWLWBANb6ta8thNddvMaUecZz1/SHZ5Z6/3UP6SgDoFUnbFDxiliuf/NxizdhU+4UBTtqVBgsNFpInFLz2+PmBqf9EBqEUSG9ZfruNG1dwF7JXPLSGRBXf9EzPr3yLfln/r3iBSokc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=Jmrg4fTS; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7170344c100so33833657b3.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1752484177; x=1753088977; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rIsTjh4GLVLD+KMCZJr0+NzS5w/OyX/hLoA+6UwSt8A=;
        b=Jmrg4fTSkNoGP7uGFdDY0zF4L2hsIBIU1qAp3ARWsdlmTywlH+e2RhxO1U1KJZSAJ1
         7omR4Dz5UJvWvUYRjpfUd2wNa8kTxWpe7jmHvToLToTrTuR9d56TDBczo56G+acdpou1
         SM/0CQF56hRQ0KEc+eR5Htli5pMJsON3bwyfjE4FuGCEYQYDiD9vvrJVoeD+NQ/Zg2yV
         u/W0mvTnjUKI0iekiQxsnoEOlxhnEo58DKEA9xbikm+1GrQnzE1wVlsp+lhXyO/FjMfe
         GmUoZQS+tGrvXKa1XXTZ0PBf8ws7274ea83WgPgsOfqLmVTx/jYnWhYbxDC9xgK6rodr
         uSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752484177; x=1753088977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rIsTjh4GLVLD+KMCZJr0+NzS5w/OyX/hLoA+6UwSt8A=;
        b=ZDcX648XNgElhCbG+sgLYIx0N5z3BA11NpNYD5FFit06R/ZKNC2JN7tv9emp8rtdHo
         50O7luLHXKu5vWqAFyLUfPZBgqXQbqQ1NN4oa+L6PpZRlV8Di8C6QEX0zrNTbmi3zuEv
         b84Jwcj0r3qnQ4oplOtRsWdzHqa9ZKfr8X6pnn2twtyNMZKjY2QxsNFy/cu7IPChbOU+
         FmIG3M7NX8F3Gb7MqlSrFa+ge/tk6131v7FXbiCM5OqhywSPdgEduNXBSVRGAf3iXvsl
         zysaIAPCrsDgs06HwjfGGsDV4S6BcLvZC06vb9yhq2jDqtzPGCsfMvXTXTtX5L/cx4L7
         5TjA==
X-Forwarded-Encrypted: i=1; AJvYcCXS/7mowr8Ea5mljVkmuBaXXR01ZlUODLZbwPwSEoAtCUFiQtYo3JaYliXokyB7eRnQpXzLG5M9mqUm@vger.kernel.org
X-Gm-Message-State: AOJu0YzdEpsxH94t5qaMUBFQeLcNGiUonPeBX7MtrfWotVzbrFm0AGTU
	m7DuSQXt49bIoNKAHcq15znPnTC0peAFCtt2UbZM9ZUHdsVbhQA6J6YCw/Fr2UQxTxaK610FpAY
	7NaPM6zDikYPEKavC2qveKfm6Vw4zKX2KXXBWWk/JZw==
X-Gm-Gg: ASbGncu/iUUrPgMceXz/Ne9mqRUcMa4N3sm83bng/QPgG2N75QobedG5SnKHAwZ0C2r
	3RKH6ocfObLUnHFPHZ6P3PrVLqouHEGc/nP8pZ66TAFpWLBjlGKj7MWwliG9Pi2Ho+BNusOm3Or
	c5lpKfOE9EttCa2a177X1g/WhF++0FHMl+ODVexCnsqONnnaTAtJ6otx/A3BbJKeG2Gr6fDGi2I
	F0R002atfWLoXfno2vh1HfiHCMN+3rHjDeO8gc48w==
X-Google-Smtp-Source: AGHT+IG6p+03ZW+kAVBQfuO1ja5ZeFH250eIb7vurLa/yxNs3CRNsc1yO9cE5aHgOeU75DtvArG8fmDVzC3kmVUq+Dw=
X-Received: by 2002:a05:690c:6d0d:b0:70d:f47a:7e40 with SMTP id
 00721157ae682-717d790e42emr197721017b3.16.1752484176641; Mon, 14 Jul 2025
 02:09:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250708-leds-is31fl3236a-v3-0-d68979b042dd@thegoodpenguin.co.uk>
 <20250708-leds-is31fl3236a-v3-1-d68979b042dd@thegoodpenguin.co.uk> <20250709-primitive-offbeat-toad-08930d@krzk-bin>
In-Reply-To: <20250709-primitive-offbeat-toad-08930d@krzk-bin>
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Mon, 14 Jul 2025 10:09:25 +0100
X-Gm-Features: Ac12FXyAHIvvIgJoN1gPJVPX6vDJtb2BR6Gk-ucRF8u8hpHHCZ5URAzHwizSyy8
Message-ID: <CAA6zWZKVnrPoutWpKQ+qzg5zNE-dhLxWBiuAoV5vf2qHfzv-LA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] leds/leds-is31fl32xx: add support for is31fl3236a
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> Bindings go before the users (see submitting patches in DT).

I think I was confused with point 7 stating that dt-binding should come
last within a series and point 6 stating it is only regarding DTS files,
missed point 5 altogether... Thanks !

