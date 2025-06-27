Return-Path: <devicetree+bounces-190407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65115AEBA65
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:51:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2ED893A068F
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 448282E8896;
	Fri, 27 Jun 2025 14:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="qLrUkMA9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8158827F00F
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751035870; cv=none; b=pXL8ohkZDHUCvUI66hZdlcjyiJJA5BTgo6xsH8iaRc3cbl4cKKkSbA3Rnv3k5cY3gYmiRdZSmHyQUJSs3gI4+i0aI3RNIh9BlNxDHkUJEDT2jnEmckXwi6lYevREb/eRqcI84ERVI4citK4AkvL7ifgik2NsvnfG6sNMQX4eZFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751035870; c=relaxed/simple;
	bh=UyBKwHH+NCfy2Fp8odnA/Wo1t4O71TtPU0o1rWMp+Dk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=YCKeKMXEoAxPmGXb15q/GTRDiREzHzJEo6NIxnq7XDSq/z5ur+Lem2K1VmRkZw3K85OjqIggpvcwMeC1ILP6siG9F38aNY/w9o5iRXjsHDQ8gyBpz/aIlQ5Rb4FG2Fp8H1G40WfhgO6DJ9iB0gPn2lK95rtzis8OPcwiyqdEaRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=qLrUkMA9; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae0de1c378fso246564266b.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751035867; x=1751640667; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pfsIeC1q9ILkZM7mTk4qTsHzqgjpNmZpZamVAmWOEoU=;
        b=qLrUkMA9b/IsKV7EW0iX5EhQdsu6TvWvqUf/AiBPiG5MsX4HiwyZ1P2LqIcMBPw2VO
         Jb0qVqBdaey19aCwlVD7/DyU+s+Gir+rHsvH+3Kms0+7c6w0u8EW4+9ak2uwNkFyv6kO
         cr4IB/H6RYx1I9XQPu7yt4GlowRrLWEeMbb1tJ5a/KmmjXRhJkQ52HwP4RNxVAdNkgut
         GEzD7LLJ2J+OJEkoCipTOabnyfqrPenXYdrYkVMr5t1E8Puw3p790Se9znPsYQvyADU1
         k0q8SshVxa4+rXaDaTf8XqxxDhVYHavrB8chfie78lj8Y/6zZ0o2L6UlZpXctch/R6Av
         SvHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751035867; x=1751640667;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pfsIeC1q9ILkZM7mTk4qTsHzqgjpNmZpZamVAmWOEoU=;
        b=dpc9eOeWPEWXQO6rFYg0UCiOGRhzfo5bOPZZt4ktiJKpSksO7cZ0SiBCD02vGG9BKN
         fvvNflZlLqGZQjNi/BX3HDmR2Kt1tl8/SYd5fMxM1VRTVyIwK85FshawJvEeEivleypl
         5ppfjkoD9BHmpfJF5aqthj6o/ksRw1Y13c314K5OU8TCYGndIUOlTt0rCiAJvpr9Z/0G
         CNOjgNPoBF1Ehxj9prQdVAAQzUjrUDbSKGm2OVhX48iKa4T9cufxco84R81SdOtnE/Qs
         xXNdDJVxv2lbktV2139UB6nlOhudykZR+bc886uIhtFhvO+GilBLvBOemfSDEav9MeS4
         /nIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZoI9FlRLrBzGpT7W3oF+jTsDlLyi4TEVWfh102OmbgFaVMOvXPdka1sdR0g3RgOQb9rHcaiYiiMJP@vger.kernel.org
X-Gm-Message-State: AOJu0YwteNuQWjrXRHTsv9v6xMCY1B9ZvRZQ3IqwhlqtETuZWg5Ue/ss
	fEAKXzeA1AR3A9JQql6CFQPpjJ8hr8QWWiB+TfBKanYNbVh+8T1br/Ay4Hx6jj8zNdpBNXf3TTL
	s/S6g
X-Gm-Gg: ASbGncv7XZA6Opv3TlR/ekrl4xTZjLzT2LRQqNJAgK1lRek0q1tPq51zmH/jO7y3E87
	IN1IAdEw1WogyBNXcJfO0x8fHyMhM+7Ncdww9ugAjGMxdfRcLN+JTa/sv5GGFMIHw9DY7S+iwkS
	DiaQttJWxLhoN8ur14gYLE8G5lO9GtJGU/gUTo3YgJlxkJvYKXSJ9AhEJRBZ672EZjJo1MX7q9e
	vzI2VnY/0CDZcwelr7MPuA4YFlukACZGS7obds9UW7e1gypVkjj456rD8M5qV2VVH/x3UX7sxCR
	j+eCieYKzorWKINrKra4CakWzmMZ0Qn/HxPAUizRzzsjXgJnakE8NqmK/p3SFW9a5/VyCuNyBPs
	L+L9ax5fm+FCHOcHFJZki5bZ6WBcS6Oo=
X-Google-Smtp-Source: AGHT+IEAV8Vw8kRnlbsTGuoP/oTwShQDEtpR4bSBf4ykT0TKkhmZMTVPe2BEFKyGiSf57dSvw0Wy8A==
X-Received: by 2002:a17:907:9407:b0:ada:abf7:d0e1 with SMTP id a640c23a62f3a-ae3500bf35dmr329595866b.37.1751035866592;
        Fri, 27 Jun 2025 07:51:06 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c0138bsm134123766b.85.2025.06.27.07.51.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 07:51:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 27 Jun 2025 16:51:05 +0200
Message-Id: <DAXEERR0W25W.18J9UZ353AL09@fairphone.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280.dtsi: prevent garbage on
 serial port
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Casey Connolly" <casey.connolly@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Konrad
 Dybcio" <konradybcio@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Rob Herring" <robh@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>
Cc: "Stephan Gerhold" <stephan.gerhold@linaro.org>,
 <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250626132333.351351-1-casey.connolly@linaro.org>
In-Reply-To: <20250626132333.351351-1-casey.connolly@linaro.org>

Hi Casey,

On Thu Jun 26, 2025 at 3:23 PM CEST, Casey Connolly wrote:
> During early boot phases there can be garbage characters on the serial
> RX port unless it is configured as pull-up. Add the pull-up bias and
> mark the rx/tx pinconfs as being necessary for all boot phases.

Update the subject to remove ".dtsi"?

arm64: dts: qcom: sc7280: prevent garbage on serial port

Regards
Luca

>
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/q=
com/sc7280.dtsi
> index 64a2abd30100..60e4a311405a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -5742,13 +5742,16 @@ qup_uart4_rx: qup-uart4-rx-state {
> =20
>  			qup_uart5_tx: qup-uart5-tx-state {
>  				pins =3D "gpio22";
>  				function =3D "qup05";
> +				bootph-all;
>  			};
> =20
>  			qup_uart5_rx: qup-uart5-rx-state {
>  				pins =3D "gpio23";
>  				function =3D "qup05";
> +				bootph-all;
> +				bias-pull-up;
>  			};
> =20
>  			qup_uart6_cts: qup-uart6-cts-state {
>  				pins =3D "gpio24";


