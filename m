Return-Path: <devicetree+bounces-138464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 65077A10831
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 96F1C1887A98
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 13:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF80522F19;
	Tue, 14 Jan 2025 13:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remarkable.no header.i=@remarkable.no header.b="VVdqWxN7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E1B1DA32
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736862809; cv=none; b=SGTBZozi8J4ld42a8Ix5QJhvjJswjahH+h9IaA11H6IyvlD84Oz+Nx9Kz5Xoll5dycOoL53bR4fyTPfzzDeyr+8bs4xwTzqE4hPNTn696WCkgbWRyAGj+uUGnI65pi3YIgfummTqzIG9QGD8F8jAQWI1Q52KGPEzwTtf5Dwv6nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736862809; c=relaxed/simple;
	bh=hJkX5+o+uJNtJT90xi4kgUIBJmunFB2qz5pb5sKqQRw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iHDw+lLNvOo6Xqak935KuNEoQIuK2WdqzbONK78ri4nHWx8WI7ULrHBtDTIN++3EfFQ9AoWNxFbD73blXj5Fla7g7iWE4A7a7X52e+c0vzwU4boQHiyFf4whXOZByCfx8jVJtBQqXmHGa49ApR/PBx1KwuiSld7dPQ5cli4UVe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=remarkable.no; spf=pass smtp.mailfrom=remarkable.no; dkim=pass (2048-bit key) header.d=remarkable.no header.i=@remarkable.no header.b=VVdqWxN7; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=remarkable.no
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remarkable.no
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5401bd6cdb4so5101680e87.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 05:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remarkable.no; s=google; t=1736862806; x=1737467606; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hJkX5+o+uJNtJT90xi4kgUIBJmunFB2qz5pb5sKqQRw=;
        b=VVdqWxN7Vfzjw6FtzWsF4xevt1EdWtHXTEBSVLHsSq8XRaQlgAng2e4TuSCPlE6Cip
         rpTQKmhgmUAQBRS89ty52/x5fKWI1TVpb8U5Vc0gSpx/tE1ONep4eHWmDCpGkBWVmEoE
         qVfgcjRh5fw61UrLS3UakTJO8yj05+Wdzy8Vzwodqcn15hZVxsOPShcLgvqpkUGqNufQ
         PlOF0WQVDkwaJ4Vmco/zM+EQgUyHgeRQ6igj5pQ7CqgbSU0U/+nsJbspLAA4R4LzIbQ+
         M+NqlL7DClkTUG4gzx+mM4/WcrPLD1w7j8q/3WQwTMkHwVqLI+kjwsW3fzSQAp18h3NU
         HImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736862806; x=1737467606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hJkX5+o+uJNtJT90xi4kgUIBJmunFB2qz5pb5sKqQRw=;
        b=VSfDASM2LP2+1O04MIenOBiGA+RpFQEWJ0j/VDL14aoXZBQcYcOeKm3RnE1QIN252/
         uhwMhMZGHD6iebdXGPEfPlqZZMDvVSv7E+krRKB6KkwRhv5LRazwEV0IdmGpwaEH6aXe
         WmeFY8oYIRG0RYfA4kMDHgWzCLZTwi+MvSsWCuY9kyrpO/AzAYbMo3zuXBjthW1+J+A5
         AP1s3RML0KTwYBSTJi0BkC2N7Vo3TKJNwVR9gXhJ8L6WKtAJlh5SaDv5IWAzUWPERSvt
         1AKjU6FuXamM9rZTK32ezr4w7QVNGy1erAzhppV71YmFNSaBc1Kn+YGxV2oSfIP6v2Km
         LGVw==
X-Forwarded-Encrypted: i=1; AJvYcCV13mKAIcoru3u5WP/tKhatvqR/RTT02/CXjFsUduCtadQTvFTtsh9FOckxx/hHkcbo8kvczrL06WKb@vger.kernel.org
X-Gm-Message-State: AOJu0YzXRJy3KkiHPZNweCdfuFdJJktEnbeXDge3XqJabLzNU59VXAWd
	UzqipKUQd3YziJcha4sSF7LFhf8M1SvYBR3HhiGsB+UXW7MAHUgAzOUaRPG4PQ==
X-Gm-Gg: ASbGncsah+86rRKZg3J0WFlOfVK3R9qeICv4asldV5stvVFdhEQ1LDnfg1t4D9KyI8A
	MTNFlk2GZoDNKkA3IIYiopRFHl0nfOn+CRQ+NcmrOPNyAnami3g9AZX+Qn9clveLhk5Pi4+nVgu
	Z+ryV6Jr7A1IEaCmWAP/+5rFjgLejsoVM56cAkQmuC20belydQYJ8BanBSoUPWCo7yb6jZzafmL
	ubd2n6MQkufeic5F1oeq9qD32W/XYMGTyRSxAE+xwcFcZGxq2mvMnXGH0UGhDjc1fOyLGhhlO6c
	iSTgUXPBK5qjV9sR2recBvZuaLYjI4o=
X-Google-Smtp-Source: AGHT+IH1UnEjelCgHrf8XrW9PCaVmULOAto7W+p38OG4x2aB45dMf3YdxSc5kdK3NURqwyo4D6jMqA==
X-Received: by 2002:a05:6512:3049:b0:542:2137:3a2c with SMTP id 2adb3069b0e04-542845469e1mr8691546e87.24.1736862805901;
        Tue, 14 Jan 2025 05:53:25 -0800 (PST)
Received: from ?IPV6:2001:4643:2b9c:0:742e:f778:f9f1:b089? ([2001:4643:2b9c:0:742e:f778:f9f1:b089])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428beaaa95sm1686191e87.174.2025.01.14.05.53.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 05:53:25 -0800 (PST)
Message-ID: <43beb3f3-071d-4f58-b356-6dc6b9de947a@remarkable.no>
Date: Tue, 14 Jan 2025 14:53:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] Bluetooth: btnxpuart: Add support for set BD
 address
To: Neeraj Sanjay Kale <neeraj.sanjaykale@nxp.com>, marcel@holtmann.org,
 luiz.dentz@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-bluetooth@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, amitkumar.karwar@nxp.com, sherry.sun@nxp.com,
 ziniu.wang_1@nxp.com, kristian.krohn@remarkable.no, manjeet.gupta@nxp.com
References: <20250114133548.2362038-1-neeraj.sanjaykale@nxp.com>
 <20250114133548.2362038-2-neeraj.sanjaykale@nxp.com>
Content-Language: en-US
From: Johan Korsnes <johan.korsnes@remarkable.no>
In-Reply-To: <20250114133548.2362038-2-neeraj.sanjaykale@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/14/25 2:35 PM, Neeraj Sanjay Kale wrote:
> This adds support for setting BD address during hci registration. NXP
> FW does not allow vendor commands unless it receives a reset command
> after FW download and initialization done.
> As a workaround, the .set_bdaddr callback function will first send the
> HCI reset command, followed by the actual vendor command to set BD
> address.
>

Hi Neeraj,

If NXP firmware does not allow vendor commands prior to this reset, would
it not be better to perform this reset during probe/init?

Kind regards,
Johan

