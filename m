Return-Path: <devicetree+bounces-223738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFBABBCF9F
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 03:57:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 631714E794A
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 01:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C7931B87F2;
	Mon,  6 Oct 2025 01:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WJAM12+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB4E1A9FB3
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 01:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759715856; cv=none; b=ErvUn90Ynqg2qSYtSoOEDbMsSa0h16/Da75azRpVt4074Vj8BloBIvCvzeanCd40zs7KrgLD6ClqA7Rya9ML8dx8PT1XcBeLkGLMhNTYZXWIqzSFZV97d/dbe0sb86ZDsmVvphGQrclK0Rp1E8Q1vhUSqjr0Z8S/WxM05pND9I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759715856; c=relaxed/simple;
	bh=t1TjX5ePi1X3+k/g4daoZ7ysf42qp+fq0bm+w5WO+KI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RnkmtoxN5VHNec0j0lGIKC3w1MtJa56WLOtRXgT76+ap9cVfgp9zIeE7sI/YnAeO01kQiSCG5vK3w2cC3P3PG6tjU4VpjZX9+rTsizmxuInzM8XIixeLUAaKgqnPAC0QUslmpnHdfQqyP2BO6hYaRo1ZtXKBH3oBOxhOYQowyoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WJAM12+G; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-76e6cbb991aso3498492b3a.1
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 18:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759715854; x=1760320654; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hJqT6wVQ58a6IoyXBnf5WKla2qjZwqbObYMHqCGe1mA=;
        b=WJAM12+G1/XA+8Uo9wwnwBUmSJHgsTzE037Kkx1u3YIvZNweO1fxPIUiHV9SQa1eiN
         z6sZGDH0CIFfdBwgMhbaVEpbXTxt5Z6nIJqQzC/Ma5sbF9zq4BdDXphA85XiOjBUeRN8
         nGXog7zDwH1iHLY/U6Q7s6jTg+ZDidy8lOwJc3dwLlMXZeG42ihrBensLmbHknQh+JQ2
         /j1rKPDrX9+j9Hbt4WPO2YFLC5orspKS+tXIycUgBXEL1ugBpepG6KMszVjLI3kLc92N
         kTc9vrRR6g8VW+LN0AX0EtOgF3l3+dPVG0g8p/JxF20SHkxmU/vtT+DNg3ZswujPU+SV
         AqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759715854; x=1760320654;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hJqT6wVQ58a6IoyXBnf5WKla2qjZwqbObYMHqCGe1mA=;
        b=HMvotOpNd/p3qc2dUaDnxcBeoYiaQyCf2yXLRZk1VdpDon6AT79tWUHwHf9vvI1Msn
         tQ/663aR5Om0bC/0FCLOsksOAOZtllD8Sz6FPrMSmIwjhZblJH/EuqizIxdUtzh6WI0z
         FZBEF4PuQtgZ5aEmSqurNFTQ4ZosqbzcCcp7cWwsVGegWDzJTlIldEeGYyDJo3bPV34u
         WDAac+WPjP2nROKYz6ekTcb7kh0UrvAwMnwZA0BnH+z9Q+mw8KgrsYghGB9gdS5lIDnw
         EEfsFHTxcj+Vwk9OtWnViTXQwE5lr3hROWAzt4cIFKp98YKEoTeNG6F/51ZaO1L/deZi
         DdMg==
X-Forwarded-Encrypted: i=1; AJvYcCWAOeaJ/N77CW0LszYZ3XQ0yRqO0PN0B1YBt1AdnCtmqHh7iMlN65PTpo8JO9KxApnHEm3MqnFSehx7@vger.kernel.org
X-Gm-Message-State: AOJu0YzYTbGjPt4mZfJW2GfCkvgxIj0pM5OgGoR3a4PLqXuNirylrcBW
	FAfVtj3kbGGCOMZalbkbTDxe0SxkeEm1iZcp1TOoZyFkNJy1zjiB7n00
X-Gm-Gg: ASbGnctzR8rOqKkhmRlw7hyLyO9j+okygZcSMEM6BdEB1AvepEu7GKdENqUcUM1k6IP
	9TiFslgTl+nYkODunxECWmTgH90dvfHvqCviPkYMV5IxsTsSdZU67eMwlQwt0GWZ5WtmcAtuZvf
	oT9eg6Xd22allMbFqoSwR+CMwcWcK5gqy9aaWofXyAKaDMi6t3VUy6LAQ9jY+kj2r/fZ71nWHjx
	DS0KbWVOTf2n3I8d5rqFsw22/hTqY1cjHBqAnf242M8sHvdRrZfssCiGYPGofxktSSc3T4Yqr6a
	HqT7QSbxFl66QeFiGDGDCLKJ6Y90SOeZTCpzZ8st1pVO1ZZHYr9l07/JKJu60KkVZ4gNdy5onYY
	7zYshVMVP5MtFrFsFCtzGVhFfW2tWl84C4W8lFMFmC2PTUolu3g2RIaxkvPJijjt2cg==
X-Google-Smtp-Source: AGHT+IHFDxt76FMK+klPkErNo9wPL3/XQa1q3bkxlDYdv5wuOXYrYCvor5915AfB/uysOfWm3wUaYw==
X-Received: by 2002:a05:6a20:3ca5:b0:32a:ce3e:fb9b with SMTP id adf61e73a8af0-32b62139888mr14319007637.59.1759715853867;
        Sun, 05 Oct 2025 18:57:33 -0700 (PDT)
Received: from localhost ([2804:30c:b65:6a00:ceaa:2ed0:e81e:8f51])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-78b020938b1sm10763506b3a.83.2025.10.05.18.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 18:57:33 -0700 (PDT)
Date: Sun, 5 Oct 2025 22:58:30 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Kim Seer Paller <kimseer.paller@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	Jonathan Santos <Jonathan.Santos@analog.com>,
	Dragos Bogdan <dragos.bogdan@analog.com>
Subject: Re: [PATCH v12 1/3] dt-bindings: iio: adc: add max14001
Message-ID: <aOMiRpPO-PrJP8vG@debian-BULLSEYE-live-builder-AMD64>
References: <961e5351afa408e69541b60ec75852fbbd1ddd24.1759121938.git.marilene.agarcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <961e5351afa408e69541b60ec75852fbbd1ddd24.1759121938.git.marilene.agarcia@gmail.com>

On 09/29, Marilene Andrade Garcia wrote:
> Add device-tree documentation for MAX14001/MAX14002 ADCs.
> The MAX14001/MAX14002 are isolated, single-channel analog-to-digital
> converters with programmable voltage comparators and inrush current
> control optimized for configurable binary input applications.
> 
> They share the same features, but in the MAX14001 the inrush trigger
> threshold, current magnitude, and current duration are all programmable,
> whereas in the MAX14002 these parameters are fixed.
> 
> Co-developed-by: Kim Seer Paller <kimseer.paller@analog.com>
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
> Signed-off-by: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
> ---
> 
No strong opinion about the dt doc file name.
With Conor's suggesting of dropping the label applied,
Reviewed-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>

