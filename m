Return-Path: <devicetree+bounces-131112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1B79F1FD5
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 17:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7739166A79
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 16:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8EF319342F;
	Sat, 14 Dec 2024 16:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xU5dQtHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B0D191F69
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 16:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734192082; cv=none; b=qSku1mGXB1o2k3kKTrzMsYZprMj7DMdSeNgzipAmxl6dlVCU56AZh1htPPAYARnIaZxjmsswHCquG56l/ynJz6DpSlqQ5LkZ3e0fYr/s20y3eRYGfMVU9Y4LRvkesYyphfCiAw+pnzxWmIjPi+2MM5R77KBsMch4Yb9W7xgkhxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734192082; c=relaxed/simple;
	bh=djCkpaOEEQOt3dJ6XDBzVVotj3XZNCPmkRaNCWtfNKQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MG4HC8EASxXKNZIpEZ0EMHMgXhorsvY5QCvtPBB3Cpb4h0gop/IobYSnfMEZ97Bhp8S7yLxmu455g4iC/i+i6za+dTm1iIkNxg1+ZWkyy66/Tl4lVr1osIyCb9Ljap8IjxVvHwgPirS9+2fVs6eWaQ2F9Vmk4K/PlcA9OPqODrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xU5dQtHj; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5401bd6cdb4so2785593e87.2
        for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 08:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734192079; x=1734796879; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=52OmguDOAfIxjeQcqf1HnSRCwwgdXocUlZ7XVYEBwug=;
        b=xU5dQtHjD/n3i78eHFfu9aWgjFAb2tiWLo2KCzm/eOx09uerF5MvEGIvqG2WfnjhAB
         sN+obNNmRn4xKv9x52DErZsPZ6l50JF579UC2dSEibqPg6bGFomhKsB7QTZYz8xA3hoF
         Zo4MWm8UKcGLyMBYQO0yvbmWBHrlQNALB6rk2QhhogWipRNmKC01yvzZoabcjDCdB4kK
         2QJ8BNd/cKqYL0K0qPAdQFcxe52ooaYicpubXru/pNFuiLDxrykTru/BgdLo60O1g10c
         CCMZ+ZSWmixTwqyZz0DKZt3GBseGy7BlBmsQVx+stgEka5XuJ35Jmd/PdlfJuwpTbXbH
         jt7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734192079; x=1734796879;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=52OmguDOAfIxjeQcqf1HnSRCwwgdXocUlZ7XVYEBwug=;
        b=e03LBDuX8gMiV3+zUzaE2fjlEnHv6mhwmm0EfcrrBytTcwWbZh9nK6UWCFw4pNI09O
         nKkb8fuE6gLA9jsXxwpQFzgu9YE/yLKZSQiRnkN3lWIxta2NMXM4NtDfYOBwdW8UGoi4
         Dix5V9wMyWq1fzktgUKSzHV1RSFmpIcfgeJNLSu1DvRQezVI9niHU5rYH9/1BQMjJ+s0
         k0VMnzlu4/zBzJGFaWHFISAiVd+tAnHvS/eiRgLD4EQKhVp1qX+mFwHLoWzswB0dS+oR
         6kjGFsDe3ni6PbB1jRSEhrtVpjYZJoE6ZT/CwaYXKM8Vsp/1b6kYal0xigaUTceJEHYe
         S0YA==
X-Forwarded-Encrypted: i=1; AJvYcCWkepmI2/rO7HbYMVq26Sq+NZPT4zu+6Dwjw5ic4qCTCVRwBKBXUPSu85R0L3qEO4O4+dlpKv3Yfb18@vger.kernel.org
X-Gm-Message-State: AOJu0YwQWwLfMfgX3W+sAl+XmqHqbfNg50XS18hZ1qmh0GwKpUnshHT2
	F+z+7RiKV8V8uAW5s/UvI/AWWzi3QXJXQLkF1onQ+C3fxazAgXpvlYEmahU8OFU=
X-Gm-Gg: ASbGncv9q7hMPnqAtL+t6l6jwO78qWH+RpyeAGZGn7DSCk61+BVu7fDxjwxvmb0+aL8
	loPMbYweR6nVgwtwdGEyUH+8EAoLbRO14UiJ/9G/fnJaayb6qrVT8nxAwQuzboEoJ5W4bU1vxNq
	4vWnh0CHPzqC0XiLxOPmVdMX8wM56bUZecoCLM51CMUuP9KksK1GOT138F5JF0KR6PIqu65xBq7
	EYVg3ic3573s3EkBHwM4mF3SdqgF42Hmt4LwYnT9LAApScujzYw5MKcPWyfFX2jo0zhqL1uJ5I/
	ZjA8Szeo5opHrt+ZOIhDvwMwI4oEySDSb7VK
X-Google-Smtp-Source: AGHT+IEJRVT5tEabRS8qiSPbOAqG0r3Ssvy5rTdPzfII22ZDgilHlDbeUnMbHUqE4fRYDG7JFW0h+Q==
X-Received: by 2002:a05:6512:3ca8:b0:53e:398c:bf9e with SMTP id 2adb3069b0e04-54099b69e14mr1768658e87.55.1734192079113;
        Sat, 14 Dec 2024 08:01:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c20ac2sm247759e87.258.2024.12.14.08.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 08:01:17 -0800 (PST)
Date: Sat, 14 Dec 2024 18:01:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: andersson@kernel.org, chenxuecong2009@outlook.com, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, gty0622@gmail.com, johan+linaro@kernel.org, 
	konrad.dybcio@oss.qualcomm.com, konradybcio@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp: Add Huawei Matebook E Go
 (sc8280xp)
Message-ID: <qdnwj54vloxf5xqkesx3vbqjdwfjnz46ca6epagbxolvjwq75y@3ig2ljaxzxmf>
References: <lwhell4z72srw67gj6gpt2uyqzx4k5dzjw5xs7dab6lbya7soi@tsoh2bcn2gwc>
 <20241214144829.670851-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241214144829.670851-1-mitltlatltl@gmail.com>

On Sat, Dec 14, 2024 at 10:48:28PM +0800, Pengyu Luo wrote:
> On Sat, Dec 14, 2024 at 9:39 PM Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
> 
> > On Sat, Dec 14, 2024 at 08:23:00PM +0800, Pengyu Luo wrote:
> >> On Fri, Dec 13, 2024 at 1:13 AM Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> >>
> >> [...]
> >>
> >> >> +
> >> >> +          /* /lib/firmware/ath11k/WCN6855/hw2.1/board-2.bin
> >> >> +           * there is no calibrate data for huawei,
> >> >> +           * but they have the same subsystem-device id
> >> >> +           */
> >> >> +          qcom,ath11k-calibration-variant = "LE_X13S";
> >> >
> >> > Oh, this can be taken care of! See [2], [3].
> >>
> >> [...]
> >>
> >> Hi, Konrad
> >>
> >> I want to distrub you again.
> >>
> >> Finally, I found something, after I enabled ath11k boot dbg, I got my
> >> id_string='bus=pci,vendor=17cb,device=1103,subsystem-vendor=17cb,subsystem-device=0108,qmi-chip-id=2,qmi-board-id=255`
> >>
> >> With qca-swiss-army-knife (see [1])
> >>
> >> $ ./ath11k-bdencoder -e board-2.bin | grep -i "$id_string"
> >> bus=pci,vendor=17cb,device=1103,subsystem-vendor=17cb,subsystem-device=0108,qmi-chip-id=2,qmi-board-id=255.bin created size: 60048
> >>
> >> It have already been here. So that means I don't need to extract from
> >> Windows. I just extract it from linux-firmware then give it a variant
> >> name and send patches to ath11k, right?
> > 
> > No. Usually 255 is an ID that is used by a variety of boards. So,
> > basically, you have to extract board data from Windows, add a proper
> > calibration variant that is specific to your board and then send the
> > resulting data to the ath11k mailing list.
> > 
> 
> But how? Is it possible that some boards have no  calibration data?
> I tried to track the access time of files, the result shows that these
> bdwlan* are never touched. According to my observation, these files
> should have been accessed, (like BT firmware on windows).

On Windows? Unfortunately I have no idea :-( Please try asking on the
ath11k mailing list.

> 
> >>
> >> Pengyu
> >>
> >> [1] https://github.com/qca/qca-swiss-army-knife
> >
> > --
> > With best wishes
> > Dmitry
> 
> 
> Pengyu

-- 
With best wishes
Dmitry

