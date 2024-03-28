Return-Path: <devicetree+bounces-54282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 962BE890395
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 16:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B93C71C2DEA1
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 15:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F8561304AB;
	Thu, 28 Mar 2024 15:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="tnEQi7gv"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic317-32.consmr.mail.ne1.yahoo.com (sonic317-32.consmr.mail.ne1.yahoo.com [66.163.184.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A861482D66
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 15:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=66.163.184.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711640452; cv=none; b=XvIw/bnxiwMaHrROQPtaweZgkgiy+1OdzD68p5xpR0yEmfg1g+rnrHkL4QEm05UWLOh3WF9aim5S4Qj/U9VXT2JLQHFwXuezdwWslR1rWgKrI1EZVyiBuJTUTil3pzKxVk0smvcAZ307QY/w47s5jmoY6dpvqhyCkqjqsGQw2kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711640452; c=relaxed/simple;
	bh=+SXbMRKRsCNWCSmZsgX8DUXaV0Hzxq1hPjnU34rmag0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KMQsfCM9Ir2wuspKcUQTNAE80E0SWvtxhDW/zl3M5P1L1nhNMfwR3/PD9sygMEptk1dLabpXHpaKHwHeBN3OIzrz2MmJ0AJ/xUdmTMlaGb/o5Gxww6Sk6kMr4raZVDiwdKPVpfmqi2sHGwR44Ws96jPlEDqxdBCYwQGTgMl4vSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=tnEQi7gv; arc=none smtp.client-ip=66.163.184.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1711640449; bh=ZyHtBIaVYtkvRDAmKUG8A/GLUqVWzwrSG+X1nkrtras=; h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To; b=tnEQi7gvgWjUS+U8MlbW771JXQVAQlw1CzJYVzRsAiERT/WmG1cOWDoYztjXwrH5Yf8NQWwQ1zGhQP8nkOfZf3zHVCRrar2EHPa/MZ1weaHkoetKkzP5tPOt6vZKSWTCsQILwgP+lXmLfdlWH8Nd2BpAkaWnyq3dgTIMI26HlJkmUC/4mgevrlWDuLtv/cVir6TjhEiUcChZxzuGXdQpNS1lVYiGVtenyp1zCG9G5sPsFTc6JIaeyhgdI8sTVfy7rnOstHF1dMCPQ0oKsC4GYJR6gSv07kuK69zGb/axq85oblcv8PlDOsE+Gzg4oj4H844lzPVod2x0nt1xnhZQWQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1711640449; bh=BXnptPcn4kf09syApF8ZAATXf/yNW5Hazi7qhIx9vtw=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=ojMwTi9c4o5y5MzcP0ImYE7MfiYmJzFo0P9kjpGXttqy+f4fe08hcXIUdbS0zMgg23VoM96yXtrKZ6fUeCCTwghmd8XuxDZUgcHvHehkuBvGtBCY/n00BJoo3J2xn1OZIKnjQ9WOd5jd8fzFPnDKgMWywyVyghowkyR8dCd3TYk484cN3SpLKLKMGa9VR2vdsb9dXpE1xC4Rh5dN5nhy0F5xC6nV3vQRiwLxP1ZQMC/85AMnpVJ7fWlFCzhy3Q07cnKo3rJNbC+nLnvpXi6gLgqkyc0OzD76sCMHhGcO77BOSpZ+Y0CL38ubxV9NgtCugptKYWLCpzRCtQIaPuuHWQ==
X-YMail-OSG: pVr5U_IVM1mohR3UFTJqDGDDf8fV5.clqO22L.9aRddV5JOBhBoeHBC.FxhOd39
 pJrU_RYOmuOGLa2dY5CoY7mX6cROr3smFAiJpPPXsY6avV.wCLnysdAGFtHVMkE43vBwqS8Fb5G1
 AhdPSbEVpEgDBR8yt2scsaU9FH3vY6qI8GtsraCLj2.fGQjxsHhJww9ospjRzjlCaWkzxiOFm6Ot
 NB2qExQL48muf_FyuT76nCDW4sk2E2vO4Wz4yauyfgryBYlWSzd2G_.2CbzPsgIyMsw0UZ.koWh1
 dRqVarS0Vdm.jL4AXTze0J2hdYznajy7W7omhX3HUBpvPOYemyZvCmtX2XHY1yY_laKnUBo3p2K5
 xmB8zOQFL3S7bkse62lREJZCu_eWfcd3vpEGw2z9gGorQ.yG.0uGgqvnoAI2_EyMQcGtm6xk.KTR
 MmQTUTIfH_t20i4o6972npYV7aYeIIyY4OYs6WfeXBGuNDAWA57cMCNzwwiKHTbtacFrS.0poB3D
 whS4_daXf3s2F62lZozOwDo6r0xKdLiykvL3H8hRU9MpLHYfBrzdOZId3tyxRWVoUNq_mI4Q3w.q
 GFW0HuLix7b0S3cYyVNJa8U_c_SGp3s7.Z5bW7ggyO0ZkHNtuKu730cRKyuBoQvQno9gjOZ3c.Pn
 h7ZhZo5DhvgsEx2kv8hWbZv8vQxcmnUp7ogY1nHUnKUm70QFPQ1HI_IqsDeiX22Yis6Ud8BCrJqf
 glDJ4KlGsMyIbPk.KcZJmalZGyjhrTPq51NWB8nfYTJflT3fNqObV_XIjaQyBhr3g62NDp6xJrQ.
 yzfBDLeKu7s1Hh5pHssABDq.1iGZoRDG4yMpoYpR93j9u5RgMQCWV9EznHkfHkZL8RV4GElA7Got
 .DwwGDBvuWWFdexgHHLCBh46vtwXSY16qN1HTlmPfvlcVrKqLVJBiXpiZ6IRFrP83ykZPuXM78SD
 fSdfeAjox5QnxYs6wdb2YsAIoYno1D7bH3xYmZIDIQUyjLfWvC_YBux50W77WgRVMkS1EcZvpNL5
 TPjjB4K8fup.EohBpr63fqi.mzymzd3HOQQhq2.LdGaf19LsCiTQ.ho7krpE4jqrr6.I_c8Hq3zP
 Uqti0y3CPUMd.UcPcFikLDcYNPexv_i.7599Phx0Ab4IyERFk1qNQ6HgbB9PDy3H8tq3gLH9qu3N
 XROMdd8tzSR1L_fq5XP4NY_66ew1G8De8wQ2bMy_mzjXtNVGcYzDKvUHt.AlmF7elzle1_3_3z6_
 6WhzBaj.xOkgYidN8AVrGATSt2EO.ypp559pxeVOtL6SkLth7.4jYZC2n2nOBs8pZ001Fj1xTUCL
 5aTtgM6Z8iwWyU0DJjR2li0cfxkpdtT6tH4DgFX2mvSO6gb5uxS2b9jXlZtOv7s4QFrH17zAStDT
 FhpCESN7PcIzQfflxlJSujYIJSk22tiN7d_y55vSshcAGiiuhLuObZIMXemJbPUzDe_FlwOVt6dz
 M0u6Fy19A.YCd1b9vIYWRCVbBoaTTxVcPA4SOkrQZkdRL91lZwt7MTWI56RlV.Vl4KNJ7n.dS67j
 _7WIr4IRquGofe67R6noU5d3p4rAPWP37bewV3_rX3ZpeL8i2D2TFH05_snF4qaDD11_i2NSsJvB
 xVmoLvIXekDLfJVuptm1mGM3Jm2WokEwIwNddUWyImxtLUNA6cFVgpumuPMp5EQb.Xk1lNjOmFTU
 EdeBUihtnLav7c9vsYL5IkodT1GCGnuUhMoPiX4O7LkLNOZ4e5Mb4X0k63gdcXZBFvd8sk_jCTMG
 c4dfr8m0iOIhkcaaddW7JAHST3zqnEfRbIaPlZS60RghxRdrXG4rJkaOZw0gqa1y5KKn7Qb9rirs
 DxA5odIrEX3EfmZ8Av7sdf7P2iUTfwNN3lWpsKq89xJFh577i5KfXwCwv3nkqNp_7aXgeTiHeCrV
 RyYMK5zzXQsnjezefcJL9AeVwBXsUShz3FIxWXGBIlSiFwxiXZIQ6sdAL_R9Y3q0BethABZQJEoF
 A78jWwqkhN9s4B6V6yPdimqPhLp0d_Z1HwRa1MoA3EdxFLaZ5gz6xHNLjqcIGLl05ypic7FmI27t
 5efSr_28SMi4Q96ojIY5P4iwU0MYjIKuEYB5JEV.iyWJDhAbUDrqZpLHeA2MoNeNBSQQ69ltVrnr
 FFwq3kuFuICZPkp.6BdwQFmBMVvDmf0OLoDpW5GAeKIlC53jEBbQ_edhyOf_6qsNOh8Ybj6RG1u9
 zphZyXE43xGFXx0WBpmsohCZihSvE74wLRROPYIxII29uqr.TU1x4CQj3pmN1AzibdA--
X-Sonic-MF: <serdeliuk@yahoo.com>
X-Sonic-ID: 8d8f7e58-1489-4d00-9537-0710dceb30a8
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.ne1.yahoo.com with HTTP; Thu, 28 Mar 2024 15:40:49 +0000
Received: by hermes--production-ir2-7bc88bfc75-8kqvj (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID fbcf4bd0dc641f57c690cc16c33a48f7;
          Thu, 28 Mar 2024 15:10:27 +0000 (UTC)
Message-ID: <20620ab0-5024-439e-943b-ab12d35a60d8@yahoo.com>
Date: Thu, 28 Mar 2024 16:10:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: qcom: Add Samsung Galaxy Z Fold5
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240328-dt-bindings-arm-qcom-add-support-for-samsung-galaxy-zfold5-v1-1-cb612e3ade18@yahoo.com>
 <ca4ed5e3-32ea-451a-82ca-25fba07877dc@linaro.org>
 <33e23d1c-5b6f-4111-9631-0f8db1100d0c@yahoo.com>
 <8e09b779-a18f-46b4-926c-40e2a5782d85@linaro.org>
Content-Language: en-US
From: Alexandru Serdeliuc <serdeliuk@yahoo.com>
In-Reply-To: <8e09b779-a18f-46b4-926c-40e2a5782d85@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailer: WebService/1.1.22205 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

Hi Konrad,

Thanks, I unfortunately sent the patch 2 prior seeing your reply.

The warning was this one which says that i need to send the mods 
separately in two patches:

 >>>

 >>>WARNING: DT binding docs and includes should be a separate patch. 
See: Documentation/devicetree/bindings/submitting-patches.rst

 >>>


I suppose that me sending two separate patches was not good, how i can 
fix this?


Best regards,

Marc


On 28/3/24 15:47, Konrad Dybcio wrote:
> On 28.03.2024 3:42 PM, Alexandru Serdeliuc wrote:
>> Hi Konrad,
>>
>>
>> Thanks, yes, I am new to b4 and sending patches, in a few minutes I will add the second patch.
>>
>> That actually add the device tree, but  without the previous patch it showed me a warning, and with both patches provided another  warning that i need to split them in two.
> Oh no, you should send them together! Could you please paste the warning so that
> we can work out the issue?
>
> Konrad

