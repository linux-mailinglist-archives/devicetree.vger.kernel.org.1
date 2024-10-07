Return-Path: <devicetree+bounces-108359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B5399261B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 09:33:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 789C31F23A62
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 07:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61565176AB6;
	Mon,  7 Oct 2024 07:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FaNftz7H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4F774C08
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 07:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728286436; cv=none; b=Irs2YjH++YJiyKrikVw3EweB1kmVQoGnutsV/mK4sVSxhX2qCJKMlQt1XGg/IQ1I0Pt4xADWutjFMJyEv+QMlhPkZ7Z9GnvUKtr5neE0V3upc7MlUKGuJEMzxOruYFeOT5Smkosenuet1uorcbufDIkia4UbBTasdrXwLspf0nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728286436; c=relaxed/simple;
	bh=tA0vf/LKMjm65h2iXKNoBIXf017Xtl0o1ImH5wGAdIg=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=d3tDTmqoP7foZfVfLCkELeD8U9RgyRQsFsSZ9FzChwnVqac6VnOXJZgFDL4Wo3Kt8bx86MqWIFCkCy2avZjevY4e+0kRwzipp7aBf2371tJqUXq7J0+Z6Rgt7oH1+KYjGXDpRKvA8qXFJJhJDtioLfP2kKV37UdCMCZKbTF1JI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FaNftz7H; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37ce18b042fso3032047f8f.1
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 00:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728286433; x=1728891233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JfQSTnXredGt081DQK4doBdILo7LxgqoBD2tUac13aY=;
        b=FaNftz7HPefdD/9YgWkLtAHUshHp7rE3C7wDJJ+vwc8uIId5LNi3RwH/o7nZtP8F2w
         n3cyWyzVW1PJ4nyco/yWflsJ85TlIr+ZkWZ1HgP+nGoaSHi59n9xFK5F5rtP+peaOK/a
         yzrtThoMyRZUCZrVj5ECb0OC8TTIpvvsjZBpYHqdxQ8TXQouNCX/wGQU1dpvtzDlTZ4j
         i1mU2T/97F/g253JRYR0M7Jz25kTmfEqANF/c1YJ47chCLgy2dE7ZnRk/JpAgfdDX7rb
         JkNHGa1b5CFPW1nKcfPr80Q+0emA/VOJsIW4uMTzeKWXM6x14o8h++t5yWGJJXLBbPeQ
         AlOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728286433; x=1728891233;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JfQSTnXredGt081DQK4doBdILo7LxgqoBD2tUac13aY=;
        b=lVKHGm+g0vYpChJGoRrm1iRdcj5SmCCaHOz5X98zKp31UcE6qvRSm8YqkaTmZlM+BR
         NlGSuUQ5cRttP0OZ0iEsGDa9DVJufZ8jgq4VJVeV4lneY+4pioTE4Pvrz1cIB31M8rdd
         ug/eqIGXgcZn7IPZo+/6wWjPHGTC7zQFxEnqf8r4O6I7xZRLOthHmIsVK8XaFKx/AHz4
         zkZQHpwIy65YgmKCKS6dwApgB4UuRvIsiwZtD0NsGQiCADAIqrlR1pG6YNBu1OX1lubE
         lMia0qU+HnYXdr39WOT1bJ191cxV10jEm450oLyd9iwEPCtlBD0Ruql1Ywn9dHANjt5G
         lhtw==
X-Forwarded-Encrypted: i=1; AJvYcCX2ioX4ASz0KkWe3AhNf2JidJ0zxgTaB77ZGQzWG7tjX7Y8VuPHyrPbKjuAJn+CGbR+HE6HEJ8kC7d/@vger.kernel.org
X-Gm-Message-State: AOJu0YzV+IhvBtCI9q4qs0lQU6Nr04s/OTL0NkV8O3yhdkIflyzLyn2m
	m0V4XaJsoILLeyKusF49XaFbdwKIfeOkDFMF4yg/JllwKDVUTBBCocnDTe7Q2/A=
X-Google-Smtp-Source: AGHT+IGHTOsRfB/RLltA6wN6lFuH5F0Tmucj/D2n0kI8Zp78hZD/B7Yc4VCHHysM4z9rA7Vq8FHxzg==
X-Received: by 2002:a5d:69c3:0:b0:374:ba2c:3028 with SMTP id ffacd0b85a97d-37d0e8df955mr6202908f8f.36.1728286432987;
        Mon, 07 Oct 2024 00:33:52 -0700 (PDT)
Received: from [127.0.0.1] ([176.220.237.233])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d1691b725sm5023127f8f.46.2024.10.07.00.33.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 00:33:52 -0700 (PDT)
Date: Mon, 07 Oct 2024 10:33:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
CC: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
Subject: =?US-ASCII?Q?Re=3A_=5BRESEND_PATCH_v2=5D_arm64=3A_dts=3A_qcom=3A_s?=
 =?US-ASCII?Q?a8775p=3A_Populate_additional_UART_DT_nodes?=
User-Agent: K-9 Mail for Android
In-Reply-To: <1fd4b0db-f9c1-44db-9aec-45f3aa269e19@quicinc.com>
References: <20240930085533.17119-1-quic_vdadhani@quicinc.com> <uk3zgyee62vrkcwtujkuw754wacvullmsjnimlqhmmbjit24rm@sqcrmbn7ngsg> <1fd4b0db-f9c1-44db-9aec-45f3aa269e19@quicinc.com>
Message-ID: <B12D1E5C-76DC-4B71-B1E4-39F83B1FFFC5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On October 7, 2024 9:06:52 AM GMT+03:00, Viken Dadhaniya <quic_vdadhani@qui=
cinc=2Ecom> wrote:
>
>
>On 10/7/2024 2:26 AM, Dmitry Baryshkov wrote:
>> On Mon, Sep 30, 2024 at 02:25:33PM GMT, Viken Dadhaniya wrote:
>>> Currently, UART configuration is populated for few
>>> SEs(Serial engine) only in sa8775p DTSI file=2E
>>>=20
>>> Populate UART configurations of remaining SEs for sa8775p soc=2E
>>=20
>> I think this is a long standing tradition of adding UART configuration
>> only to those nodes that actually will be used for UART on one or
>> another device=2E Is this the case for all these UART nodes?
>
>Recently, we have begun adding all possible UART configurations, similar =
to what we=E2=80=99ve done with I2C and SPI=2E
>We will continue this approach for future targets=2E


Please describe why it is done, not what is being done by the patch=2E In =
other words, why do you need all uarts in this case=2E


>
>>=20
>>>=20
>>> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc=2Ecom>
>>> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc=2Ecom>
>>> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc=2Ecom>
>>> ---
>>> v1 -> v2:
>>>=20
>>> - Modifed commit log as requested by Krzysztof=2E
>>> - Added co-developed-by tag=2E
>>>=20
>>> v1 Link: https://lore=2Ekernel=2Eorg/linux-arm-msm/98e7dc28-4413-4247-=
bad1-98b529f6d62d@kernel=2Eorg/T/
>>> ---
>>> ---
>>>   arch/arm64/boot/dts/qcom/sa8775p=2Edtsi | 231 ++++++++++++++++++++++=
++++
>>>   1 file changed, 231 insertions(+)
>>>=20
>>=20


--=20
With best wishes
Dmitry

