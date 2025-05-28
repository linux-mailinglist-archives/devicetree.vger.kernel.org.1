Return-Path: <devicetree+bounces-181274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55562AC6BF2
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 16:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5578916916C
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A4CA28934A;
	Wed, 28 May 2025 14:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="erkqbxt8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD499288C8C
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 14:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748443071; cv=none; b=BlKkOhi2YAtNt3qHlDhBCt5I1zFQS/IyhA9pcYGp8BMIc5teL1cRaSJjVmXAUue5+nN6TlX0IEUTdo8b5VZpEOwg9VMtRIZK0QoFxOkdqYHxgTOOBeB87WKjtQVJZckPacm+xy9dsKVpJpE/EPcsSLrgaDpSoAFvZu/6gXrvjOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748443071; c=relaxed/simple;
	bh=E/d0r6OOpns+M1s/P1Grzi0S5pY57VyTC8g4426MF4A=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=E67lV362sX+e+hPNiMog51jNcqiJHOo/4DeoQNdLQvy6Xn7M2MapBv3jtpDUzvjfRxOsQwQGW1Dn++SlV+o1fGyDe8ILRQGmmZJCLtXr/cYEP9Sg/KK+fXFblNmffJ1YOCfVfERso4+Xl/ymM7eSmWG5ev6bBGyV0z1HjEbK+4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=erkqbxt8; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43edb40f357so39696125e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 07:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748443068; x=1749047868; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8e/FVNVV68OMZMjntDEe+D+IU61dqOd3DPdYBN+2WAg=;
        b=erkqbxt8Z1K4KelvFp4KBetLfSTi7qibcWWSbW+liggles7H3+h63gj9e1GpVyRDeM
         1vIf/sIiVKj5E7gQo4Lvtc6F4a84YfMcW7ln2HwqFrP+cetnIoeEZDbFlVFA7xytmAFk
         rwSpK/RWeIkyfj0HDn1NTLSJlEvwN4eyJmKO6jei2b1Cn2dxlpeKXOa0PWtAEgSqp+a8
         ba8ngUVlKeG4wvmkozZigPdqn+YP1lLYXMYWAxjTOIvCyEAdxlVRyJf184woEILNa2gV
         3bMnxsSkmq/wNunhPVxfyXhEk91yVFGogEiJD4a3u0vwqZQcIVlFF3TbxvAK0YRbifE1
         efuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748443068; x=1749047868;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8e/FVNVV68OMZMjntDEe+D+IU61dqOd3DPdYBN+2WAg=;
        b=PPlzPHCdL6jCao5LBulOEt1a6tsKrp3I5LleShNV+sScfTqIrQwWo5Q8Ts/nCgI4ff
         wv09EZEcdK3SvAedIs0VuiOimHqq7r0z3tNAZZ8ix2izdabnhYkWWS1mF9fqQjvNpAvD
         psKovBG5H0jlofYJMM67F2pSNMGD44xnDly2JVdggsEMhk5GfR5ROg29pMMSVJ8Tt7fT
         pvUNaQqMA0kgdBqGVY1FqOCjheAb24YIqYCOrF+VFojBpkCevMhN6KBubTqJOmX/Ttju
         LHhJQNb0UN67g3X4GDWvtbx9bz68K0CIkjGj65ODb6HFVtRq1JkO3mMxLErUiJrGCaNV
         vpuw==
X-Forwarded-Encrypted: i=1; AJvYcCUyM6OJc4vK0FSvUy5ez+30QY+DhIOgSzljMupbownZutqn2NUkwA2A9dCw9wu8c/KzdnOiAeRubvCa@vger.kernel.org
X-Gm-Message-State: AOJu0YyrXxno5dj+tT58mJql+p3E2pL4cCtgFDD1/9G+dNwECRQqdqGg
	HL9pMaP6Iicm5z+J0YPywxWikTm2wKwioVoVatzXw3hupjZbqGiRhYjbEE9KzDCI64o=
X-Gm-Gg: ASbGnctNrX1Om/GMEFyKUXYkcSTQ5OUR3gCyRKWpXwGqYmOPfQdWPAlHYhvdsNZIja5
	+hEaDXRwj9OhguEQ54QrGfP++v38tkweGL2aW7UogbqOZPwSh0fWcTlxGaTGDX2a3rjQkhXMp3v
	L7lKUmBpKpMq4B/fXFIi2TMi6FbbzhgzHFwOglKySCKl/BU/Y6M9SarIcKo+r2EJ51nHVPFqsrU
	1lEXasoY+O2tp+OOlF0yLKp4Kh0YNgAXUsV4lM/mGAYot3ND2nqx3HcMtV95X6FSdLxZVenyhmj
	aXBQeY3K9c0qsPUYg/Q479zD4F7XC4LvI9k/MtMy29uLfBy9onxUGGZL
X-Google-Smtp-Source: AGHT+IHIM9BVzOCXjIDgxXeOl1dIOtdnPxWp/iK5O/TdB3YnpE+mVV2tCG/RghqPvH2Xw5hFmwSDyA==
X-Received: by 2002:a05:600c:1d0d:b0:43c:f0ae:da7 with SMTP id 5b1f17b1804b1-44c9141d90emr133062395e9.7.1748443068029;
        Wed, 28 May 2025 07:37:48 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450064a133csm24375355e9.11.2025.05.28.07.37.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 07:37:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 28 May 2025 15:37:46 +0100
Message-Id: <DA7VC87A0OMF.1X5XEWVCHFLE5@linaro.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Mark Brown"
 <broonie@kernel.org>, <linux-sound@vger.kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v3 02/12] dt-bindings: arm: qcom-soc: ignore "wsa" from
 being selected as SoC component
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
X-Mailer: aerc 0.20.0
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-2-9eeb08cab9dc@linaro.org>
 <20250523-fancy-upbeat-stoat-e9ecbd@kuoka>
In-Reply-To: <20250523-fancy-upbeat-stoat-e9ecbd@kuoka>

On Fri May 23, 2025 at 9:12 AM BST, Krzysztof Kozlowski wrote:
> On Thu, May 22, 2025 at 06:40:52PM GMT, Alexey Klimov wrote:
>> The pattern matching incorrectly selects "wsa" because of "sa" substring
>> and evaluates it as a SoC component or block.
>>=20
>> Wsa88xx are family of amplifiers and should not be evaluated here.
>>=20
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom-soc.yaml | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Docum=
entation/devicetree/bindings/arm/qcom-soc.yaml
>> index a77d68dcad4e52e4fee43729ac8dc1caf957262e..99521813a04ca416fe90454a=
811c4a13143efce3 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>> @@ -23,7 +23,7 @@ description: |
>>  select:
>>    properties:
>>      compatible:
>> -      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[am=
x]|sm|x1[ep])[0-9]+.*$"
>> +      pattern: "^qcom,(?!.*wsa)(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|s=
c|sd[amx]|smx1[ep])[0-9]+.*$"
>
> Why dropping front .*? Are you sure this matches what we want - so
> incorrect compatibles? To me it breaks the entire point of this select,
> so I am sure you did not test whether it still works. To remind: this is
> to select incorrect compatibles.

Thanks, great point. I tested it with regular dtbs checks with different
dtb files but I didn't check if it selects incorrect compatibles.


> (?!wsa)
> Because qcom,x-wsa8845 should be matched and cause warnings.

This is now confusing. I thought that the main job for the pattern above
is to avoid selecting wsa88xx amplifiers in the first place. Or, if I can
quote yourself: "What is WSA8815 that it should be here?"

If said wsa8845 with incorrect or correct should be selected by that patter=
n
then why not just leave that pattern as it is then? I am lost.

> And probably we are getting past the point of readability, so could you
> try:
>
> compatible:
>   anyOf:
>     - pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sar|sc|sd[amx]|sm=
|x1[ep])[0-9]+.*$"
>     - pattern: "^qcom,.*(?!wsa)sa[0-9]+.*$"

Thanks, that one is much better for readability. I'll test that one then.

Best regards,
Alexey

