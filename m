Return-Path: <devicetree+bounces-135860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFA6A0287B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:48:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A7893A589A
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 14:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1333F1DE3C3;
	Mon,  6 Jan 2025 14:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u5OBMbRO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5041DE4CB
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 14:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736174875; cv=none; b=LT6+hZJ116a/Iv+VBWcWv6BasMWcX6rnuCkuY7L0iorly4I+oSry5k/6kozfMHjILWO1DA5JS3OviCgpaAZWbMeBHzWjmt/c5fIR2q7tdH4XKeoG9kYiAI70qLoQhmIMIC8/QpUuD+H8zT5W75COKlFvt6FD9iSFzwLM0SQXsD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736174875; c=relaxed/simple;
	bh=XsIxgXbUZuTD5KK+y/0Q+Q8bZTIptCr2vEQ6/d6j1lc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=IYHsN+DTXOpOyb2dKLiCxl6I1aI8JruEGUoUQGQzELO4StrCVo1xkHvzbcdPhz5I07vxj5Dc82jMDqAxhB3zCnUjSUk05swyaVc3zySe3it5oXvkSFiEWw96GbnBxCuL2a2Lm6MKVuQ/BhZRLRPCbA1BLI4KbCYnS8MSMvFkQaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u5OBMbRO; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-385d7f19f20so6345054f8f.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 06:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736174869; x=1736779669; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0P0ntcOdwfTK1ckknnSib9L8kT5fhMX/1TeuOQQRzi8=;
        b=u5OBMbROjqM7Uvpl5dCknAIDx/3Dr/rYxaO4BOyRjwBg0pbEm6bVxj1O2F0gNNdF2K
         i9p7KpgBlGpH9xRjq/zQbhDlb8ec3AlNphT8LE+J2cEYJXmpImz+W7AbsKUb+2FYeJCa
         W59m9ydXYL+1pbBqMb90ok72C2q7eU9A9E6lizW/eS97v05lnw4nU8bOivOsCbd7aoi0
         4yGHsvkWYef1Ldbl6rNTWdF/m3NMth8rIYrLBDlVyvze95RNK1Tn3D+YNrg4wTNlUFoH
         hHhFCOi+hJ5voBbwh+19tXs0ZmdGSp2eZoy/9qymeEbjXhlJagl+g397SiYtVRpFiLje
         0Urg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736174869; x=1736779669;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0P0ntcOdwfTK1ckknnSib9L8kT5fhMX/1TeuOQQRzi8=;
        b=nZ1c0n/3VkmoUqSj8/F7T7aoOm5xM5IaftOiyIuFtoKtaLfWnbsddpcy5rhwMzgA4n
         Y1Sw5SxjmsdnEjaP1+mDRYSbTTyO9FplF6Vpl4F45MMu3HwcliwRv9EXUzcgKrsV3Za9
         Hme+GU8GuvcQ64h8ILXDRCQVGO4yopAj1KkSUnGLtb/Kfq/HZjDiIv6ql6yBD0dbAjGt
         1lQDYdWgyADLNt5sthC9D423l9t9atZBCTpL/RMAbPV2fHp85UWCcJU4ywcamTeOQTto
         qbhCD2WHBFS6FsJXKegR1Mg4VShWsSc0EkSuFqf/JNXWBkITR/BaY8h4BOcgstxaU0Sl
         wFqg==
X-Forwarded-Encrypted: i=1; AJvYcCVOJBXatv4RnXcpbf729IQFYvPO3jI7Js04Q16WFt/V0OMOVuB7RJuy3rneAt9JNYN/vGtWlDRj6MuQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxqGlLbdt+Wmh8OhRV9MPu1+RHo4f/+MmCDCKVhNypdO6HRLsIe
	Y+ZXhy6S+XsZ6rd92/W3MgARenI8+uWq+A+ZSYp+vYb+TIEewu6Dl5FNFFnYsfY=
X-Gm-Gg: ASbGnct48PMHm2k7S2MkVD+da5919Kt5owis6xIJSa1lhEiZMsTDHvixQVmcig3NRYX
	QF/x7Pmv1YFr3Ade3GCyik55o/ImWc6W06BVsRq8RxpA2/T6wdPH2fLC8xA7WuCARx/NgF+Y3YX
	p/xegRMDhMpJPO/MITNNZX1S27Oo2Z24rY9RrJzmSDNrJlv+KXEPWabWI0ibe3TlyCHU9Q4eNiF
	1EO0Ql0SpdDWej7T9lxXF/4qisOrXhE92sBgs0efDfJ7lRiHoESnBsTLVD2sQ==
X-Google-Smtp-Source: AGHT+IFocU5Kt7cIBiwiA3+35zB5dzuUUOuHVV1AmW3qxjkF+Uvui4xX2ynQgH/d8NYqO2a5Mr9cDw==
X-Received: by 2002:a5d:59ad:0:b0:386:4277:6cf1 with SMTP id ffacd0b85a97d-38a223fd49dmr51138545f8f.39.1736174869017;
        Mon, 06 Jan 2025 06:47:49 -0800 (PST)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8292f4sm48841898f8f.3.2025.01.06.06.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2025 06:47:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 06 Jan 2025 14:47:47 +0000
Message-Id: <D6V2MJHNF54L.L16IHKEY9455@linaro.org>
Subject: Re: [PATCH v5 0/4] qrb4210-rb2: add HDMI audio playback support
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Bjorn Andersson" <andersson@kernel.org>, <konradybcio@kernel.org>,
 <linux-arm-msm@vger.kernel.org>
Cc: <linux-sound@vger.kernel.org>, <srinivas.kandagatla@linaro.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <dmitry.baryshkov@linaro.org>,
 <krzysztof.kozlowski@linaro.org>, <caleb.connolly@linaro.org>,
 <a39.skl@gmail.com>, <konrad.dybcio@oss.qualcomm.com>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.18.2
References: <20241112025306.712122-1-alexey.klimov@linaro.org>
 <173527442286.1473071.12713395655975649786.b4-ty@kernel.org>
In-Reply-To: <173527442286.1473071.12713395655975649786.b4-ty@kernel.org>


Hello Bjorn,

On Fri Dec 27, 2024 at 4:40 AM GMT, Bjorn Andersson wrote:
>
> On Tue, 12 Nov 2024 02:53:02 +0000, Alexey Klimov wrote:
> > Rebased on top of today's -next and re-tested.
> >=20
> > Changes in v5:
> > -- drop MI2S clock in sm8250 patch (seems to be merged);
> > -- fix gpio-ranges in lpass_tlmm (Dmitry);
> > -- added reviewed-by tags from Konrad and Dmitry.
> >=20
> > [...]
>
> Applied, thanks!
>
> [1/4] arm64: dts: qcom: sm6115: add apr and its services
>       commit: c722e3ce278826f29a2a8500d685130dd0b6a297
> [2/4] arm64: dts: qcom: sm6115: add LPASS LPI pin controller
>       commit: 4541a5f11e59015d2f4b39864e421bf9e804097d
> [3/4] arm64: dts: qcom: sm4250: add LPASS LPI pin controller
>       commit: 6624d17a8142776e43bcd632c227ebf0bbe9d590
> [4/4] arm64: dts: qcom: qrb4210-rb2: add HDMI audio playback support
>       commit: 1caf6149c3bf41a2ee07869449c4ea1ec8bbc2f8

It seems you applied v5 of this patchset.
There is also v6 of this patchset that was sent here:
https://lore.kernel.org/linux-arm-msm/20241204140027.2198763-1-alexey.klimo=
v@linaro.org/

Could you please merge v6 instead?

Thanks,
Alexey


