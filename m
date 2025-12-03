Return-Path: <devicetree+bounces-244093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6704DCA03AA
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 18:00:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 654613001519
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 17:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A851C350A25;
	Wed,  3 Dec 2025 16:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="ZwRwb76q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C3D34E75D
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 16:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764780242; cv=none; b=tmlAXTFhO1EKUs3PnRzM6tptHd2GzWgKUskiUy9BZeOXg9g3KxPKXU97ShNlUKsN3ESP2BNnPLVy4HTF+YUVa0LVmyOULxLFZ5q+wWgsruGB/JQ//02sN/DddM1uhQaOimVGiFCj2nA4ak1mmWUKryGJwKJg8vD/bqRPxq8Cc2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764780242; c=relaxed/simple;
	bh=IAArZcm2wSkF6VtcJYsSwPQFosqWc4J2GeZQUSxMWAM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rgxAu0qmX6IzUPj5J5QZvsr3hzVAlcC9jje8TQV8r+w9eL5FdNEYENPJbcZ/nQMlWES+PvAp2rqHXJxWPYESA+qg/LsqfLDXCNc4UkOwDs87Bt/6DZCfkXXZwHhEIpZdDqbxqBwvRQdl6xlWuwaQBwYsRXZv9BgC2kf2JkvjKX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=ZwRwb76q; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b736ffc531fso1078334166b.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 08:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1764780235; x=1765385035; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tre/rf8HRcrussbSV2D3pHxXOcQLeC/eEv+L6zskgMA=;
        b=ZwRwb76qHI1VYLCeNAula2R95XS8TYDnQJTb6pfXfEI6MbW2Na6pvROXOUR36LbDjq
         GQL8ltbtEZPfAHIQhqTGmttAtJCyrYo8UD3YVGlBfylKGshclNeiEP/FmIAtLpa7dDYa
         g7MfPNI1LJwWY0wlOB1/efzutJMwV7qqZuxT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764780235; x=1765385035;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tre/rf8HRcrussbSV2D3pHxXOcQLeC/eEv+L6zskgMA=;
        b=jha98YjRzlHmgJPrbdNpZAkt1E0LLt5E2MeLKYtZKyiwtdQmuFxXRKrzPS7xfH2kK8
         +SpwWZ2SeyoV6vnwHHmXr9Y9zm0CmKQ/GMfp93300xRYY88oFiAG4OkRKWIsCSrS0kPM
         tnU+mDoJJgIZ3LgjUlS8ZUej5N/sxH/0r3PlbNM8xSYuvrkRke+x72LPOXFX7Bq+h5of
         S6+t/rK2tTmF1eZykdNoiNQEozEqNqjdk9F7jO33hyrdhDQfanWm8fyjj8jvVpVKiPj5
         /uqRLb1W5Ib0Ct7s6D2qKoLsoZAX4VlHuOz4KQrYc++51PQ7IcwE4dueHERWRUIWftcH
         W7mA==
X-Forwarded-Encrypted: i=1; AJvYcCWWWdjOBpNZUbTBcEBWkIe1wT/ZlUW57pS5Rw9V5x7cmraSDyKRFW58hbR9x711JKObu1YOGbLDS3Bk@vger.kernel.org
X-Gm-Message-State: AOJu0YzKrOnQMW3A7WLXpRVloTGed1hH9dUpIwQPDPUb38+HTiT6BSE+
	6bw7TmqMWUfSnDS22SHfLzbIQUjfwIrzts/C4eq84Xpp+KCKlWW9dBZqpfl3BjGZZsPc2QYbkea
	3jE903s0=
X-Gm-Gg: ASbGncszoexCtNJJ7Or7tjCHxT3grmXOQ4BIDCuoxwJhJGguSdVLUdNci3hUtRPXnJ5
	eawNoRS6oILNxLN4+gkJYdKVCCBarqaBEtnoCUZyqSxcG/SejKimG8W8EDAhXI0uid8uYBZNDrl
	SnU+ktI1uMJPpUTN9QMNGjCEVvNXkd1YD+H8G5r4OkS3hk8XJPQVoPAyvGwZzuAzfkFx9srWFI+
	Nhkam8Td2fZNxntd1SQjYrxYM/kMZg2ToLQyUV8ZGJneJDs8e1+WSp1rCQ8wDjujJ6r8lBRIInd
	9K2KpQ8JT3yl5WLFKuOmzpqi64kyTgQ02d9dhp0KCHmzcdQM9HhvbKJbm9bzb+b/NqzdfR0xMtA
	O81jaJAYsaT7SMCUJcCOqzvR1/eid30ZWqAHf2kMdCObkVUmp5oUMurTkcJfzwUT9VSj8I+qwDz
	9NDJ5gJ2yLaINfLmgitJv6kxIRZWCIfWJvOXWKfCQJ9LENCr96hj3Hsit+dkV+OcU74jjhZUU=
X-Google-Smtp-Source: AGHT+IGakhSX9BDG7M5x7i5K8PZfdgp/otW+vxEKRpSugPjgW+9Km8p7IgnlXARhAUf/NPXhMPYNcQ==
X-Received: by 2002:a17:907:9625:b0:b73:1634:6d71 with SMTP id a640c23a62f3a-b79dbea68e8mr293601466b.26.1764780235441;
        Wed, 03 Dec 2025 08:43:55 -0800 (PST)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com. [209.85.218.47])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59ea334sm1818396766b.47.2025.12.03.08.43.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 08:43:54 -0800 (PST)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b73161849e1so1722881066b.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 08:43:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXNzeFRwS1A9g8FHlMp+o84JR4QO315Qehgh7YeaPLRFdoJR7KD1eQXhNCXdK7nvD0HuIuqZzqUAB3f@vger.kernel.org
X-Received: by 2002:a17:907:9706:b0:b76:3478:7d52 with SMTP id
 a640c23a62f3a-b79dc51a4fcmr293870366b.38.1764780233541; Wed, 03 Dec 2025
 08:43:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203152437.3751325-1-robh@kernel.org>
In-Reply-To: <20251203152437.3751325-1-robh@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 3 Dec 2025 08:43:37 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjLCSGkNMpcKd11EhrQJieXn7J-7px-d_sJ=o+2UT5g=g@mail.gmail.com>
X-Gm-Features: AWmQ_bnLY8KW8oEzYYPFpNFQCtPmlo2omVWH0TluZ2sLvA-oifz7NT-KjCUAHKU
Message-ID: <CAHk-=wjLCSGkNMpcKd11EhrQJieXn7J-7px-d_sJ=o+2UT5g=g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: thermal: qcom-tsens: Remove invalid tab character
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Akhil P Oommen <akhilpo@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Gaurav Kohli <quic_gkohli@quicinc.com>, linux-pm@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Dec 2025 at 07:24, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> Commit 1ee90870ce79 ("dt-bindings: thermal: tsens: Add QCS8300
> compatible") uses a tab character which is illegal in YAML (at the
> beginning of a line).

Applied.

But I want to object to the garbage that is 'yaml' and 'invisible
whitespace has semantics'.

Maybe we can have a "kernel yaml" that just turns tabs into spaces
with 'expand -t 8' and make the rule be that kernel yaml files don't
have to participate in the mindless garbage that is "yaml by the
specs".

Yes, I know it matters for 'make'. That was a mistake too. But at
least we could *fix* the braindamage that is yaml, and we already have
a defined tab width for the kernel anyway.

          Linus

