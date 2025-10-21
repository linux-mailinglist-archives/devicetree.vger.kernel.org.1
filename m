Return-Path: <devicetree+bounces-229302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B5248BF5D03
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:38:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8C7E74F03D6
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D7832D7F7;
	Tue, 21 Oct 2025 10:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ZMnt0hsI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E2B32D441
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 10:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761043002; cv=none; b=EYa6G1WY6CcZvoWmVkK4LyfaCcENzO6q05e+GLxbHmeuUTAvLVHt+bMemRQ99rJTTdRqLeJWr3kn2EEWbFydcolHNgpOI5FAUrZVeXUHoRzvre6ySzqlXngboEw/+ppd6oJJdPP2AnKyJ5dnh44YLPQcG2QI/abKSEd4PkOCv7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761043002; c=relaxed/simple;
	bh=THknO6ravWsd3NQgFAsW90DN5nGw4cI/sjpLiGacHhk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=j0bIS7PItxke/5yaDcmXRp9W1U9L44cLtAtdfFBCiryIB7BQubigyEf1xWRDOHlqPMMamDa2qmzzkCVkon5qEZmKd6e7NjrE6HdzJy62MpWUe5h55LDZ04cAX6e1HvFCoHHMWdzD4Qu8+Z7fSgqAf3hei9wrABpt9SL/9im1MBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ZMnt0hsI; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b4aed12cea3so914643466b.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 03:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761042998; x=1761647798; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T2j/5fMN5NhbH7iUBrDo0CGu9Ykp0qn/1cFaDJh/hxw=;
        b=ZMnt0hsIfo2LFHaMQD8bz4zYsF/KwWz/yZ+2swDaaoVpTUpCUStKQy0MwmX8LpIdg8
         OyowzTrdzUQIaXAXQGCMNwMCCIre7TB1cBerKKri4Ft5Bm0k81SeH5lcqdMykXAfBb+1
         R7pFykSgo20PFINkc4/7kjOOKDlfSeCkfS+y94zi9otTUR7v9MbrrE+G1uo2s4XQFoCQ
         1vvyfEZ17pp0v4p415krLuOeC9ZDuNU25lXGZLF5c/Amw5MfuExGwQ4fGjMF5I02cLId
         1kRshaSqBrQUaAHK4lpjlMxJKXf4EfTq2iLtyomn+cTjTgVy/Scq5yKTNfdZsBVeIFi3
         qtiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761042998; x=1761647798;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T2j/5fMN5NhbH7iUBrDo0CGu9Ykp0qn/1cFaDJh/hxw=;
        b=uzyA2PLbRwRETz2UvFxLTfvzUh3nCdgvGt38M+yK+RNUEWlM5IH3GlExS4TaKBgV1I
         9hJBKijP4DatkmM3cqe18GSiXfujJpfypJwDoMIwF1sDXgAQME4GI7MmVt1FBn28ocrf
         5h/Py4uTD25BR/Pnm3iX9pW7B6FDg+BV4kAXcQItQqZoQ4Gl0kgveQXeAH0r6QxJ2kHy
         TQ1WjEZtlcGxiQpeXYgz5fAv4EoA9n887apWyQZHPrf3/SgDjRcVs5/Jt7320m5mE2QC
         OmAP0jXWZxIAygLwHWFkXkGVV13zLYdZXC3i2GSVB/PNy+rsJ5BBL1rpvq09E6sQzR5E
         MuEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzeeT94ceYU7dD9XlCBvD9Im5s/KG9nfKk8HKxLBJYb9hU/a1r5PsYf6Sr+ZK9M0WH5rbpalhPZANA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4YaRBIGP+Qc/k8sR8OjONO/UJ8kK9sPFBs2YMMXQ0Djg5LYZA
	XK4KN0R7Y8w9fRuqj2hbLZRHZqN2dY9xBWYWrc+wxNl0dbz25MuYysU+n8rurflKkAU=
X-Gm-Gg: ASbGncvG/E2U+ttHbclHjEmQdmt0vBxhOAHx+7W2gpjKndJIoXdXOwfi1RrCx2xuBSQ
	vkycVH3Rs/ZAH+tCPzY3W4nODrGTKWtnPdzznKjhAkS0QCsb6fpbgUi9FSozLfjvz4y58i3yTOm
	ZvD0jUAoHFaalm4g/niWI2r2NPf31C7jdnh0GCIR0c/Bo2GUh5I3XZwOjzAKdz+jtNyDbyu/1mr
	W3VwhTJRpmpdx437G1yjCv/9ORz/LvojayP8BmX89B8o9D7bBtAmw4BU7ffzLtVlIYRKLnv7Saj
	QjkVJA3ZPynS/7ZqKOhIB8CGVQGngi7D6VgYiTQIEAxx9GYQRDylaWVQUN1wb+j2I18H9pgoHWa
	JZhiKUKFKtrh1Y+AS9sCOIdwGKH4xdwZ5dI7am1nKxU9HXdMpkexPZOSasWb6+YEsP0wLWfzwcA
	PoN3vFFJyL3s6hmR8wwTH200KhhIeJs9f+XMlhM1XrgpZmZcfTuEi2swxdQfkg7y4BMxv21cmVj
	HKqPZF7VhX6sH0AL6hYllO2kA==
X-Google-Smtp-Source: AGHT+IGxaq6kMVimTVensoisT9WTDXA2uUyJiFpRAc9IVXDle+iQVHo1jPa1gFTcrYaSLvBaofq6qg==
X-Received: by 2002:a17:907:3daa:b0:b5c:6a00:f8da with SMTP id a640c23a62f3a-b6472d5bbf5mr2001551766b.1.1761042998367;
        Tue, 21 Oct 2025 03:36:38 -0700 (PDT)
Received: from localhost (2001-1c00-3b8a-ea00-4b34-6694-d9bd-5210.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b8a:ea00:4b34:6694:d9bd:5210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e7da3412sm1041899466b.3.2025.10.21.03.36.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 03:36:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 21 Oct 2025 12:36:37 +0200
Message-Id: <DDNXN4IVYLIL.3083X63IIT9B2@fairphone.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Jagadeesh
 Kona" <quic_jkona@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Taniya Das" <taniya.das@oss.qualcomm.com>,
 "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Vladimir
 Zapolskiy" <vladimir.zapolskiy@linaro.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
 <3210a484-b9c3-4399-bee1-9f5bbc90034c@linaro.org>
 <CAA8EJprP9Z181VDCT=xfyrBipzgiB0tfb8M_XZ4H=yOrvEnB0w@mail.gmail.com>
 <f41061a2-cf45-4588-8df7-22270c936ee2@quicinc.com>
 <D8EZ47Z557OX.37FDVYA5AHET0@fairphone.com>
 <d64c0776-0b12-42d3-aed3-4e6a13487f51@quicinc.com>
 <DDKNL43NWFMA.1S03T0SUYFVMY@fairphone.com>
 <85bf3468-24bf-4f14-afcd-28878ad84dc9@oss.qualcomm.com>
In-Reply-To: <85bf3468-24bf-4f14-afcd-28878ad84dc9@oss.qualcomm.com>

On Mon Oct 20, 2025 at 2:21 PM CEST, Konrad Dybcio wrote:
> On 10/17/25 4:05 PM, Luca Weiss wrote:
>> Hi Taniya,
>>=20
>> On Thu Mar 13, 2025 at 12:57 PM CET, Taniya Das wrote:
>>>
>>>
>>> On 3/13/2025 1:22 PM, Luca Weiss wrote:
>>>> Hi Taniya,
>>>>
>>>> On Thu Mar 13, 2025 at 5:39 AM CET, Taniya Das wrote:
>>>>>
>>>>>
>>>>> On 3/4/2025 2:10 PM, Dmitry Baryshkov wrote:
>>>>>> On Tue, 4 Mar 2025 at 09:37, Vladimir Zapolskiy
>>>>>> <vladimir.zapolskiy@linaro.org> wrote:
>>>>>>>
>>>>>>> On 3/4/25 01:53, Dmitry Baryshkov wrote:
>>>>>>>> On Tue, Mar 04, 2025 at 12:55:21AM +0200, Vladimir Zapolskiy wrote=
:
>>>>>>>>> SM8550 Camera Clock Controller shall enable both MXC and MMCX pow=
er
>>>>>>>>> domains.
>>>>>>>>
>>>>>>>> Are those really required to access the registers of the cammcc? O=
r is
>>>>>>>> one of those (MXC?) required to setup PLLs? Also, is this applicab=
le
>>>>>>>> only to sm8550 or to other similar clock controllers?
>>>>>>>
>>>>>>> Due to the described problem I experience a fatal CPU stall on SM85=
50-QRD,
>>>>>>> not on any SM8450 or SM8650 powered board for instance, however it =
does
>>>>>>> not exclude an option that the problem has to be fixed for other cl=
ock
>>>>>>> controllers, but it's Qualcomm to confirm any other touched platfor=
ms,
>>>>>>
>>>>>> Please work with Taniya to identify used power domains.
>>>>>>
>>>>>
>>>>> CAMCC requires both MMCX and MXC to be functional.
>>>>
>>>> Could you check whether any clock controllers on SM6350/SM7225 (Bitra)
>>>> need multiple power domains, or in general which clock controller uses
>>>> which power domain.
>>>>
>>>> That SoC has camcc, dispcc, gcc, gpucc, npucc and videocc.
>>>>
>>>> That'd be highly appreciated since I've been hitting weird issues ther=
e
>>>> that could be explained by some missing power domains.
>>>>
>>>
>>> Hi Luca,
>>>
>>> The targets you mentioned does not have any have multiple rail
>>> dependency, but could you share the weird issues with respect to clock
>>> controller I can take a look.
>>=20
>> Coming back to this, I've taken a shot at camera on SM6350 (Fairphone 4)
>> again, but again hitting some clock issues.
>>=20
>> For reference, I am testing with following change:
>> https://lore.kernel.org/linux-arm-msm/20250911011218.861322-3-vladimir.z=
apolskiy@linaro.org/
>>=20
>> Trying to enable CAMCC_MCLK1_CLK - wired up to the IMX576 camera sensor
>> on this phone - results in following error.
>>=20
>> [    3.140232] ------------[ cut here ]------------
>> [    3.141264] camcc_mclk1_clk status stuck at 'off'
>> [    3.141276] WARNING: CPU: 6 PID: 12 at drivers/clk/qcom/clk-branch.c:=
87 clk_branch_toggle+0x170/0x190
>>=20
>> Checking the driver against downstream driver, it looks like the RCGs
>> should be using clk_rcg2_shared_ops because of enable_safe_config in
>> downstream, but changing that doesn't really improve the situation, but
>> it does change the error message to this:
>>=20
>> [    2.933254] ------------[ cut here ]------------
>> [    2.933961] camcc_mclk1_clk_src: rcg didn't update its configuration.
>> [    2.933970] WARNING: CPU: 7 PID: 12 at drivers/clk/qcom/clk-rcg2.c:13=
6 update_config+0xd4/0xe4
>>=20
>> I've also noticed that some camcc drivers take in GCC_CAMERA_AHB_CLK as
>> iface clk, could something like this be missing on sm6350?
>>=20
>> I'd appreciate any help or tips for resolving this.
>
> Is CAMCC_PLL2 online?

I'd assume so given nothing in dmesg is complaining about that?

But not sure how to check. Debugcc can't do PLLs, right?

In any case adding CLK_IS_CRITICAL to the camcc_pll2 doesn't change
anything.

Regards
Luca

