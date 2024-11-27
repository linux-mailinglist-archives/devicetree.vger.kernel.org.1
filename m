Return-Path: <devicetree+bounces-125156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 868779DAE19
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 20:45:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4654A282020
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 19:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB82202F73;
	Wed, 27 Nov 2024 19:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SdsqqWMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7412B200BA1
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 19:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732736739; cv=none; b=NTDserOanD2F+ssMPCZitxw/n/lS3sl8p/wAlV7oHYoYdMm0B39mfkixiF016JJwVol9jwqc6zhaPPx+oFp2pBySRMXM4kXmyxpwY5jK7O5xcEhggcTYxC5IkYtI4BJqMe4TkKwn966N8sV4C2Rh359w/gpGZFDEwOsVcEzR+T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732736739; c=relaxed/simple;
	bh=NylLDBV4iWNpobwH6iSMROiM5e+3FgmCpG1sYJRENiU=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=MLl+lWuPqCFw0WuOA/mxXtL+XH5JLmKE/gdBW17kIOh1Q2PGlbkur68l8AbFDFTMtsP0+Si8YfA5BsRZABRsHCuuMLTCP2NB+MXTmx70ZWRqNLipU+09IGFcCzvOZKJLZjUtJpjHNizPGd3fcRck3jTLvf0HVpdp8t9pkzc3sXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SdsqqWMv; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53de852a287so32092e87.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732736736; x=1733341536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NylLDBV4iWNpobwH6iSMROiM5e+3FgmCpG1sYJRENiU=;
        b=SdsqqWMvn5S2SYfmYLBXcDXi5Svbf+0hfOWzzLfC+vPAd8iDM9vf0YUzFt8AJUGqwu
         2fLfEXfX84bZ6vPUmfqz3i5ZrxjDCShk7ipmbI+q00aTBkbz7giqTCTn13nJpqcnNcJd
         0980vUOxC+lLWggqlSe7mx7f4C3zFSni48E+9NerhGfsDyEJdiOEX2aD4OS2cqUSjNrf
         JvXfBsM2Cue+QJBdr5mFkCx/qwo6JuLFHNl/7rwI6MRHRR4KBlQV7gffUBsHLBRBwq/c
         SAYlaEUr8aqZNezQ1XXaSnhSvURE+IpzKv6JaeQHg+fdyOHWEhK1QAK6BnuccKEwAjYs
         QKUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732736736; x=1733341536;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NylLDBV4iWNpobwH6iSMROiM5e+3FgmCpG1sYJRENiU=;
        b=Ez4xD+bOGtciNnipiH2s69c1Kpm3CC8Ipthl7JyifZyQPXdohedhNMpdgO+JaVOxjo
         EYLvZbr3XvPpUrXY9fRGmbZqHmjUNmJCCcmWqdnWtqPHB8y5hZ/ZKOnN7rNyU4DuDdPl
         1bnqgDijSJ8axvH32QzHWT56H/4EPQLeYXgxBjiF87CatxrdcYMVW+v5jf/kggQtq3Vx
         dEk7+BLkBq9UKM/c3mdH/Tj2VZhkqx4G5K5pCtikUSHy+2pxX2n0RNJWDA/TI7W3Qirs
         6FvzszyItdeXlYXhmy1pJom8NM6F7XkWi89dULAOGbpXgnqJ0aIIRSSmX1Fcii+QcvfC
         KnrA==
X-Forwarded-Encrypted: i=1; AJvYcCWQSPbVOHEJ1D7AY+fArO7RGInR//wIoycXZ9qZ2aMAweEAKWdwi8sJofagM1jR5LvpO7e3zSDaUKFl@vger.kernel.org
X-Gm-Message-State: AOJu0YwTBfXR6WM6J0MSrvgP3wtR3CWcqOCb+9zT5mxz9U+g1MHXa9vq
	SSdWDmJBlTeB0gFq740un7MXc4Uddm/F7LSnZ6r8FOskqRiOb5YuOG3Ht2IW4mE=
X-Gm-Gg: ASbGncu6MYxfaL25PHMPysdCL/IDV+Nlt6jSIGywRrKOGYJWzArc9zAjPOaMPvFFvhJ
	1zBtyVwZtK0ejl0SeD9dd0Ol6W/Afnm8QX+XrVD+6TAE/hd5/aHCHUVQGzK6NYfgsIFj80n0mGN
	7iHGrTr6ABA8RhZOpFcTjM8lAncTlsV1lBWhULQQN/J6MTTELXKtTdSNecRmpdD3SOf3ekKLPhE
	sw8unJu9ofjWQJ46cv3WlW5yWJY/LVT/n9f7J415exzIkJ9sDKbH00dsPCbMMnwovjcgEQO+U5l
	YLpBt3derEAxc9Q=
X-Google-Smtp-Source: AGHT+IH40kESQ0kSX97wL3PUiuSrJ02aqjttnHdyPp1N1UTnVIo1USB4X398z4n7wKGyArZKFCjzuw==
X-Received: by 2002:a05:6512:b03:b0:53d:ed68:3cfa with SMTP id 2adb3069b0e04-53df0112264mr1385460e87.55.1732736735626;
        Wed, 27 Nov 2024 11:45:35 -0800 (PST)
Received: from [127.0.0.1] (85-76-116-93-nat.elisa-mobile.fi. [85.76.116.93])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24812besm2319077e87.121.2024.11.27.11.45.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 11:45:34 -0800 (PST)
Date: Wed, 27 Nov 2024 21:45:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
CC: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
 Georgi Djakov <djakov@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Odelu Kukatla <quic_okukatla@quicinc.com>,
 Mike Tipton <quic_mdtipton@quicinc.com>,
 Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_V6_3/4=5D_dt-bindings=3A_interconnec?=
 =?US-ASCII?Q?t=3A_Add_generic_compatible_qcom=2Cepss-l3-perf?=
User-Agent: Thunderbird for Android
In-Reply-To: <fff1a05c-5e7c-451d-9b08-4e835d6ab131@kernel.org>
References: <20241125174511.45-1-quic_rlaggysh@quicinc.com> <20241125174511.45-4-quic_rlaggysh@quicinc.com> <20241127142304.GA3443205-robh@kernel.org> <zchtx32wtii2mzy2pp4lp4gdaim7w56kih7jcqes4tyhu24r3n@dagazlsdgdcv> <0ba0f4af-5075-4bb1-a7f6-815ef95bbda7@kernel.org> <538761B6-5C8D-4600-AB9E-687F91B855FF@linaro.org> <fff1a05c-5e7c-451d-9b08-4e835d6ab131@kernel.org>
Message-ID: <CD9BA30C-C38F-4F3B-9823-B8F5B4160BC6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 27 November 2024 21:22:02 EET, Krzysztof Kozlowski <krzk@kernel=2Eorg> w=
rote:
>On 27/11/2024 19:49, Dmitry Baryshkov wrote:
>> On 27 November 2024 20:27:27 EET, Krzysztof Kozlowski <krzk@kernel=2Eor=
g> wrote:
>>> On 27/11/2024 17:53, Dmitry Baryshkov wrote:
>>>> On Wed, Nov 27, 2024 at 08:23:04AM -0600, Rob Herring wrote:
>>>>> On Mon, Nov 25, 2024 at 05:45:10PM +0000, Raviteja Laggyshetty wrote=
:
>>>>>> EPSS instance on sc7280, sm8250 SoCs, use PERF_STATE register inste=
ad of
>>>>>> REG_L3_VOTE to scale L3 clocks, hence adding a new generic compatib=
le
>>>>>> "qcom,epss-l3-perf" for these targets=2E
>>>>>
>>>>> Is this a h/w difference from prior blocks or you just want to use B=
=20
>>>>> instead of A while the h/w has both A and B? The latter sounds like=
=20
>>>>> driver policy=2E
>>>>>
>>>>> It is also an ABI break for s/w that didn't understand=20
>>>>> qcom,epss-l3-perf=2E
>>>>
>>>> As the bindings keep old compatible strings in addition to the new
>>>> qcom,epss-l3-perf, where is the ABI break? Old SW will use old entrie=
s,
>>>> newer can use either of those=2E
>>> No, this change drops qcom,epss-l3 and adds new fallback=2E How old
>>> software can work in such case? It's broken=2E
>>=20
>> Oh, I see=2E We had a platform-specific overrides for those two=2E Then=
 I think we should completely drop the new qcom,epss-l3-perf idea and follo=
w the sm8250 / sc7280 example=2E This means compatible =3D "qcom,sa8775p-pe=
rf", "qcom,epss-l3"=2E=20
>
>It depends for example whether epss-l3 is valid at all=2E ABI is not
>broken if nothing was working in the first place, assuming it is
>explained in commit msg (not the case here)=2E

Judging by the current schema, epss-l3 is defined as new HW block of aka n=
ot OSM L3, no matter which register is used for programming=2E


>
>Best regards,
>Krzysztof


