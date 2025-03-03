Return-Path: <devicetree+bounces-154079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 178D8A4EB3C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 19:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 221E97AAB58
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F14A28040A;
	Tue,  4 Mar 2025 18:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m4we2YJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline3.cc.itu.edu.tr (beeline3.cc.itu.edu.tr [160.75.25.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8061527C868
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 18:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=160.75.25.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741111812; cv=pass; b=SbuZs0irtAZkexSZd39ENiSpWBM+1U2lI/0Kpg6zPw3eUrKoQQUS1wEE4WaJRXDOIIpOSxCtSbgLTb6GWh41+ovrmOvA0I5+3VgHG200Sx0uRepOoRTAUCclwE2/qL+a7nAhon6nNeO26HatI+3ynXqvqQ6EVUlfLMItDTOIf60=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741111812; c=relaxed/simple;
	bh=dmWAA5A6KdZDZ5q6P5+UJ63tpLhJK4oP5t2qo+k2F0c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N/XY1Jvy7C4b3aazjmOt9/xVMXTLbWG2C6pGp0IMkOMb634aWnVR1Ehs3k73LOQRMyW//t+qmC1XFtDD2YA4kXRCIDyUQt/h9Vlq/vbmYe+ciMcwRtgHWfzV2QOzwqmK5KSD82VycEeXrLBw4NmjZnDZ4PftLl4Cnp/bnT8UNG4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m4we2YJ8; arc=none smtp.client-ip=209.85.218.49; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; arc=pass smtp.client-ip=160.75.25.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (unknown [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline3.cc.itu.edu.tr (Postfix) with ESMTPS id B8A7840D1F58
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 21:10:08 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Authentication-Results: lesvatest1.cc.itu.edu.tr;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=m4we2YJ8
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6gyB1JR0zG1Zs
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:25:06 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id 4497C42760; Tue,  4 Mar 2025 19:24:49 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m4we2YJ8
X-Envelope-From: <linux-kernel+bounces-541684-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m4we2YJ8
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
	by le2 (Postfix) with ESMTP id D06E54269A
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 15:17:18 +0300 (+03)
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by fgw2.itu.edu.tr (Postfix) with SMTP id 6457F2DCE1
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 15:17:18 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A371E3AA749
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 12:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729B320F09B;
	Mon,  3 Mar 2025 12:17:02 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4905C1E98E0;
	Mon,  3 Mar 2025 12:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741004219; cv=none; b=aXBOfUYtpW730HgXV97F0ET0LGbPhiZnq/KuarwjrwmwFLpU34VwXmyjQCwUsRZLu/niATOJEKYmOPcVjBEy9DHH8WRTv5IY77C/cUmlW86/Psx5wbKzUAsKAxZXg8sVPGFsgtQhWP3pFRwhtR1okkeEAq5rtGeOnygt6+275mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741004219; c=relaxed/simple;
	bh=dmWAA5A6KdZDZ5q6P5+UJ63tpLhJK4oP5t2qo+k2F0c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A7BHONeMlgfoRTavlgSUPnqpktSixSfSqp3DgVRkFJycHmY7ZXmpysXlTAbY1Wq3mwnNqUy+YsafU35bPY7yJbg3Nue5zsOgvYaZgOaWD/dLdYdXnOjflfojoSiyP5DOSkZ0v9LO8Ww8kd39emJQ5qEqjGGOUD34vTzuUifLO6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m4we2YJ8; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac0cc83e9adso133241466b.0;
        Mon, 03 Mar 2025 04:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741004216; x=1741609016; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dmWAA5A6KdZDZ5q6P5+UJ63tpLhJK4oP5t2qo+k2F0c=;
        b=m4we2YJ8Bxxenvp4BVM0dakxRhLiGfYv/UOCZdadEeggZEVZ4pxAnSWao6i2PG46ya
         vt7f5kxAlq6rLNd8cSHzWR3Jp+C9HmD5CakO1NsSidkS6Pw8q5+9+pWS/2QwNHABJPn+
         fMOcRleUHCg1DlxiFuP+C1Q8GAZJJqtzhrUXJYN6Z0204a5X1ay/jjOcEF2txIi4WkG8
         faDJKw9CzsO4UWQhSYQqxZGs4+YGqJ2esN2F6ZWciDdVA7jgF9Y2kShEQ+UheEYPBOgE
         6hTCCwKbdcrx5YWCZ+PY2nFPcc+BxsWJBQaBdcmJF5Mgk6OSEwqbAKQ23Co6TcUn3cC8
         +14A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741004216; x=1741609016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dmWAA5A6KdZDZ5q6P5+UJ63tpLhJK4oP5t2qo+k2F0c=;
        b=WzrKini5nywGL10xR0GZNfwtHUMHpthbmWuNUq83X3y6ixVI6QBsq+czBbSmJpuC+r
         eZS2XNGB4O8nnLHZHF1112WuT2WNccAyI1BulI9VdKFOZb5lKARmE+N4Qbu1FD0rdOty
         yX/qLf0d4KloNWzj9AbWtBjEMHhqYYkVatJJAsGD99a0ZAfstfGCtX0PaUPQuDoRr4ed
         BrFINf5KMlBkiSyn3tjKtuKK+VNw1gHc8/LKftF0ESEFU7ejqTqqu6ID7lmcXpygErJE
         fpIzqZMsPvR+NPuL8Q4Z8WMMp5vp9u8bxvpyRIzOE8Vo4L/aaCEM7cRKMFG2W6lAK/Rm
         LVmw==
X-Forwarded-Encrypted: i=1; AJvYcCUNpW6Oiy+Uzc3d7zIgTO1swH+pshVjiJ/2hlniqLjaqN8a/N/AX/cKK5fmL8vpk++T6RhOLS7mLWab@vger.kernel.org, AJvYcCUrM9PXtIz33sLwyNIm1ricnxbqMSnjCLiUFMWOXjfJHMv2ISY7Q7wSiGm3/QlYO7P4ej8XRsO32juTccYR@vger.kernel.org
X-Gm-Message-State: AOJu0YxMNdP4E97CD2JyZDBAYRZ/SkFA9kY2OZrmkwA03YCCanYDCA2m
	sgU+p3Hr3rZMbt/TA2Wq66Lz90TsQQIL37uewD6pANORcX91z8G/sujeHmZCA46W/P7EQKKQgDS
	AKSCipodkJlpBFXDoXGyk2uDZshI=
X-Gm-Gg: ASbGncs2ZpW4oEQT0eLGW7ZMtOleRaDFu0QGmZRhC4k8v6eFWVRebWfainHBs5ZARR/
	FPrfP52wWb/NA9gYWH7HZDbp+99Fr890AeyNFbNhGSKJ85yivLHsDwadNcEQVNGpat2Hn+D6MWB
	TfM8tnxzWVsr3HXdX7hADkkfoKKHHFzqh9ukp/T1bclpfGaDkbHpBRoabhYA==
X-Google-Smtp-Source: AGHT+IEWsg75v/hQusO92wYbok77xTnTZBB5fIXFZNML07kPJN+1v9SRSHAjW0zlT+EHg8Qt0iPZnwIWSqsWtbaE2Es=
X-Received: by 2002:a17:906:9993:b0:abf:52e1:2617 with SMTP id
 a640c23a62f3a-abf52e13b44mr681831766b.25.1741004216262; Mon, 03 Mar 2025
 04:16:56 -0800 (PST)
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250228094732.54642-1-iansdannapel@gmail.com>
 <20250228094732.54642-4-iansdannapel@gmail.com> <DS7PR12MB607055136A599EE9A1895414CDC92@DS7PR12MB6070.namprd12.prod.outlook.com>
In-Reply-To: <DS7PR12MB607055136A599EE9A1895414CDC92@DS7PR12MB6070.namprd12.prod.outlook.com>
From: Ian Dannapel <iansdannapel@gmail.com>
Date: Mon, 3 Mar 2025 13:16:45 +0100
X-Gm-Features: AQ5f1JqygE9vrhI-0VSmBZEWXAxe5mQktxDfRVX1U01SZtvfEewck3e2d6EJxis
Message-ID: <CAKrir7iKLw6QUgywW1BM7JF2WK7m_fBEoOt1h7DS-+i7qH2ZKA@mail.gmail.com>
Subject: Re: [v4 3/3] fpga-mgr: Add Efinix SPI programming driver
To: "Manne, Nava kishore" <nava.kishore.manne@amd.com>
Cc: "linux-fpga@vger.kernel.org" <linux-fpga@vger.kernel.org>, Moritz Fischer <mdf@kernel.org>, 
	Wu Hao <hao.wu@intel.com>, Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Aradhya Bhatia <a-bhatia1@ti.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6gyB1JR0zG1Zs
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741716533.0271@Ja7B5XqzSiCCAALRAvC0Tg
X-ITU-MailScanner-SpamCheck: not spam

Hi Navakishore, thanks for the review.

On Mon, Mar 3, 2025 at 12:57=E2=80=AFPM Manne, Nava kishore
<nava.kishore.manne@amd.com> wrote:

> > +MODULE_DESCRIPTION("Efinix FPGA SPI Programming Driver (Topaz/Titanium
> > +untested)");
>
> If untested, it might be useful to mark them as experimental in Kconfig.
Is a separate Kconfig for that preferred or maybe just a note in the
help description?

Regards, Ian


