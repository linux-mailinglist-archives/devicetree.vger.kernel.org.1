Return-Path: <devicetree+bounces-16034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 099417EC931
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 18:04:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B31D41F27DA7
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DEFF3FE44;
	Wed, 15 Nov 2023 17:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="gsu7AaES"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3F83BB52
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 17:04:03 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C8DB18A
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:04:00 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1cc329ce84cso62448175ad.2
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1700067840; x=1700672640; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2vXjZi1TWybvJvWusx2LE/qbFHFpHMDPrWyl59LPtpg=;
        b=gsu7AaESz/BpWzy8JIO1t+cXWcA7KiA7xJE53dbNRT1xROB9j/loENDymuKL/+F5dk
         yWxXTIMDMBnBEWKul35GVSSkYzoOkGuc/fDZKapjm1UHPbb+fQ4ekhH3AjFWAxKeKy+G
         1LuRYtuPoY+xbXol9v7Fh6KEVk16nlo7CoGDiNT2DYwBKbLOma3iBI4xF1W6llM55xmn
         A6oO7y5UNeErwSKV+oBU8NQCvJKGa3px5hawDlIMdkN2kxXTiCT0CbSo4gpcZaIFuwAQ
         aXzntc7AosqlVw9Qd4oe7wIUV/WOhQWLbsnj0cZdDA4e3p/uXWbHNKtDJbZYQjoVKAl0
         3n0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700067840; x=1700672640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2vXjZi1TWybvJvWusx2LE/qbFHFpHMDPrWyl59LPtpg=;
        b=Ijs8xkVy7Kf9P9CSZFlGbmVO1GsLQUjDWLdDWrFzBXzppBaUezCaVOBwlGGjmrQnrS
         hQioj/wxqzAXJKO2u2v+00X3tdl88TG96c32eI/ZcVpefEq+uzqkdFcSS6uRNg7xndGB
         V+rTcMn1C30F3BLbouYUNxaetRLb3/L3MyYERSQ0MlDogy2TKkBHV1KG0T2Xz+SrIpPC
         NR/RbVGoPtkebSTvsrInEuWqNAxF0jRov0VHykCkGf2sykohWKoahus4AXY5ff8nIjzC
         lH784WFguEWS+IfUt9IuRvCwAZPJpTVHPJEyawvRceaOprLbYeYfzuPjoLqd6V/A/ybZ
         QwWg==
X-Gm-Message-State: AOJu0YxWgXslL8nxpM+fyeo/OQ/kaP7Y0OsggSYD5pZh7fyNp0Qbt2RE
	rh5ecpqlLAx1MKR2B8j7RWpHqiz5SlQen+O2QrOflQ==
X-Google-Smtp-Source: AGHT+IEXxL0Hb77ml1/HRd/tgPldZOLlZgj9iohwffkaNcHKxiyHPI9T/wh7OZhMep77EWc97jgS7nM7mNVYzT9tQHU=
X-Received: by 2002:a17:90b:1b43:b0:280:472b:2e82 with SMTP id
 nv3-20020a17090b1b4300b00280472b2e82mr12995352pjb.39.1700067839650; Wed, 15
 Nov 2023 09:03:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231115032515.4249-1-quic_luoj@quicinc.com> <20231115032515.4249-9-quic_luoj@quicinc.com>
 <a1954855-f82d-434b-afd1-aa05c7a1b39b@lunn.ch> <cb4131d1-534d-4412-a562-fb26edfea0d1@linaro.org>
In-Reply-To: <cb4131d1-534d-4412-a562-fb26edfea0d1@linaro.org>
From: Robert Marko <robert.marko@sartura.hr>
Date: Wed, 15 Nov 2023 18:03:48 +0100
Message-ID: <CA+HBbNGnEneK8S+dZM6iS+C8jFnEtg4Wpe2tBBoP+Y_H0ZmyWA@mail.gmail.com>
Subject: Re: [PATCH 8/9] net: mdio: ipq4019: add qca8084 configurations
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Luo Jie <quic_luoj@quicinc.com>, agross@kernel.org, 
	andersson@kernel.org, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, hkallweit1@gmail.com, 
	linux@armlinux.org.uk, linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_srichara@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 6:01=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:
>
>
>
> On 11/15/23 17:20, Andrew Lunn wrote:
> > On Wed, Nov 15, 2023 at 11:25:14AM +0800, Luo Jie wrote:
> >> The PHY & PCS clocks need to be enabled and the reset
> >> sequence needs to be completed to make qca8084 PHY
> >> probeable by MDIO bus.
> >
> > Is all this guaranteed to be the same between different boards?
> No, this looks like a total subsystem overreach, these should be
> taken care of from within clk framework and consumed with the clk
> APIs.
>
> Konrad

There are patches for QCA8084 clocks:
https://patchwork.kernel.org/project/linux-arm-msm/cover/20231104034858.915=
9-1-quic_luoj@quicinc.com/

I guess all of the clocking should be done there, it isn't really a MDIO is=
sue.

Regards,
Robert

--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

