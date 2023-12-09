Return-Path: <devicetree+bounces-23462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4695E80B571
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F32BA280EAC
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F6F18627;
	Sat,  9 Dec 2023 17:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="RYfj0lvH"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 519 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 09 Dec 2023 09:16:48 PST
Received: from out-187.mta0.migadu.com (out-187.mta0.migadu.com [91.218.175.187])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DA741712
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:16:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1702141687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kh1DA/v53PnINd03bhNbVOefrP+VfCi294Z535BlDZI=;
	b=RYfj0lvHNRaBwQfdlORTXx0KnsieEEfGpzyIPdQXwLYHoKmRk/H0gtBM6ZvMaEHdqsIaoP
	+IxStqaO6kA/InJxImrZzgf4UuwlHMGlCRpDXUf99Rf9eGRBriufyPCY4Lf/X3JEjA2GRu
	TVvPguajcohi/3GBjnBqSPWJHgVljQM=
Date: Sat, 09 Dec 2023 17:08:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Konstantin Ryabitsev" <konstantin.ryabitsev@linux.dev>
Message-ID: <63e4c6098fdf5b7995dab74b415d55d32f757b5c@linux.dev>
TLS-Required: No
Subject: Re: [PATCH v7 0/2] Resolve MPM register space situation
To: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Thomas Gleixner"
 <tglx@linutronix.de>, "Andy Gross" <agross@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Marc Zyngier" <maz@kernel.org>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Shawn Guo" <shawn.guo@linaro.org>,
 "Conor Dooley" <conor+dt@kernel.org>
Cc: "Marijn Suijten" <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>
In-Reply-To: <1c99bb49-51e9-458e-acef-a0615dca95ce@linaro.org>
References: <1c99bb49-51e9-458e-acef-a0615dca95ce@linaro.org>
 <20230328-topic-msgram_mpm-v7-0-6ee2bfeaac2c@linaro.org> <87il58sr12.ffs@tglx>
X-Migadu-Flow: FLOW_OUT

December 9, 2023 at 9:00 AM, "Konrad Dybcio" <konrad.dybcio@linaro.org> w=
rote:
> >  Signed-off-by on the cover letter is completely meaningless.
>=20
>=20Yes, I realize that. Blame b4.

It's not -- some subsystems use cover letters as merge commits.

-K

