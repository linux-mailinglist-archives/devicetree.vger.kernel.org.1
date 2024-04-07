Return-Path: <devicetree+bounces-56912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D012189B045
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 12:02:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86D74283F87
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 10:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E027171D2;
	Sun,  7 Apr 2024 10:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="qi7CXAFY"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic316-21.consmr.mail.ne1.yahoo.com (sonic316-21.consmr.mail.ne1.yahoo.com [66.163.187.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC39517550
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=66.163.187.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712484144; cv=none; b=tNeH4ofYhEUaWl6zM/njaocaOVK5J0bZiZwrZhyNmOIRJSLv+I6k0oQKsWIq0vasJpSl1KLP8kXWHyYgvjsqCvfOxZNRR/ySGponBdB/TXO1HgkQVpz0qXMPJNp1Dy1N8TwqqrBpA8ASd00WDAjJ1B6iYHUxjk0PZlchh0wa224=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712484144; c=relaxed/simple;
	bh=IWTIjbsO7ky6wjX0WM/09NBDuwxkAXd4zp0bVFc/FtY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lOYkTUJza5EEW3NjXh3PuqU+XDxeprKJaOGGCv6uH8zfHF5wmst8xm/f9yilXv7Xj31kbOpulVDSmdoUXbUgpg/OmvdRpxjGgBg990CbU6M/P7eo+l2V/rw3Cxaf6mAHA/2QuZsSmbrCXsvYJV2bONbVE4mBu6FExabhS9uK344=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=qi7CXAFY; arc=none smtp.client-ip=66.163.187.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1712484141; bh=hB89fBU1gf++hm9muSsqTrPVUIEBVDR5AlHXJ0AmO2I=; h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To; b=qi7CXAFYKFYL4goDiO2jdhQrfqG6KqxzLJUKQrnFAghDQyYEirTXw95Lnrx1XcmBI4x8VzD3A2BjUT5xxjPvi2W8E1+IgraO0pnXgfnkhJQ5Hsqskrp3qOY3aORq5SYzygPxRXzOyd7afoYJS7/umDjRJKxgtCPMgUNjFfdcHwMLv+MtqKERnKG7lEjAas4S8SnppNJVc9ZivwIyJGvhWd9rL1wWlc9zEZ1VhkZF9a5CSG+F7/WrBcOBpggmR9ELnZ3S02UDz7t8fWcZCJG37qw1Snl7zwKb7nmSmr+ZTO2O7UgEIcrHt328UY34XiTU7OQMVF+6G4wUxglZPzwacA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1712484141; bh=YnapXjN6jNnuGmife2ZbsuQYR625ywS0KTRnrgqzRU/=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=MuNjv9b1D0kHo2kXe3YTgkU57kEKEQ0zIYz4qxFV/MmtaYf+xCQzcl//3sPrzUQrD7YqbXjd5WOXn/oSjM1Tll5liFxsx6RcIZWzwiGHcBbwvqEiBeBM1u4FGQ/zeIwjdmCd6X4KpmkH4lLdGplcQCybwALuvub5SGjG2pqLEkaYa2394P/ofoweUYqUWoe5f2w0jadpjQZ9CMNzTGwMN2TIz66qHqQknCdg3P1KUfi0dv6lFk/epweHKMar5D/mRSkezD3bqdDrkWkEkTtqzA/Byi8+jyy+r3nDEepGJo0uPGZEdMdRFSwFCPHq6LrZrBKYRi81xNB9lC489qCxyg==
X-YMail-OSG: dGKwT_QVM1n3ifVo18XuI4LRTSPwXAO6P5PcF2l1dl64t4U2t.sYjZZiVgjHv0V
 qihZU_lDhdrunQ_5qCvMfvpoLBIPOEYYwS0n0zbYYXkKdJArz8m5ZLHOAWtTqWt7gZEXCb6hGbwb
 LWu5n1OXUmVhYsEvCgfYHxHXgZ_WYtINsrYkcQ9Lyo8GyQh2M5M777pWRnukDkJPFRrjhmC2.tCW
 PRIs3myAr2sZNbBQ32f2MWqmbmLAFJYJQNHaLi0zIf_IHEwGqz9Zobhd0.whhkvYY2T75xbgPPGP
 xR74WzmFvpeUtTY9XWcugO1_uafbr0CMzpSjdO2Gm586zgugRXRyVadAO5t6LFA0CdjrvkbgVauN
 fEIcazDy4uy9wcP..DaKv5GdQKZRYl5XfDchv.Nn36j_yoqsn4khC2f7OWeCe3KsXMpLGJOHquiX
 zrAYe8giV_IauUvGGW.VdkeB8z0.5wIpCFgsJK4sIH96nKOQxNq8ZAvyN1DWhLzsU2Imoht6SkEX
 O8o1aw92ULb5C8FAoOQbXf_PKVggnOqQr90UXRNf17.mtCpsrF92dACjHAHYwbdkvk7Xdl_Q6rwW
 eJpAAFY99Agv6cbfzXJDGmRPOjH.4icNj3k02CXNParZTBMOS6ACPxoYpK2SwaUnPPTfl._HTE8w
 Y3nSaB7Dbr2_W3yal81a9pswfj5Dnurq5vaMAUR7aIIEUH1nIskobcUuxs_xy0ijR_a1YnfQ5K4C
 0C7bEsQzdA0F0CoJpM_AXWKSWPBDuEDTqPAJeosDGViV9dGhfSKwIebILSbfQLVaoD.WwelKhksQ
 5T53dwhAe9YSLkY9OQvpbYvdwIutppHJ9dUFgB9Z435ryMUjz3VT9qg74Zk5knxmFxSUu_8wHRWg
 YmkZmFU7odBxxsE16IvDyHd9r_rDG5h1RFBt0NnB5saRkqbUj3LUYKvlmTeKAnWxnOuo5b_LbFFp
 qYQvrwdDEWoGVtuk4UHAJg0S_UYc3YA.mBI.OqoDEMCqgPucik_v8BlTzl_xVujukcLrSU1F32ZW
 kEvkUTMoOc0keC06aRNIq01yvLVTAsPSzs0b_Rt5puCXg_gImgU0EqGrp_4dAtvce.wqKvwORn3I
 ypvMkVIOvTbiRdIPCQQcasEUi4tOTExhpOUu5I_uV7bIV1shVeCOXpOc8Vf7JdGoNUxs7vLO7ukc
 8vYDqmkqD0hXIiBva89ncUCo0TqFdrgl2TUYkVbs4ppEbS.gkClYfXDObHJOqxc1abYUoav9P_Wh
 rK6hKzW8hH8mWJ68th6VkBDHIPikS6FsGRoHVqZmNZy89s7XXfW2ueAveP3iq4vGkpQ4gGv4bSWr
 .qZMdVQ39EkybBb_7q2AHYx6PiaaDiIq5RqkbbvH9RXSH.X.YK9vwzuHNa7h4Kxh27n._uXm.c60
 fwYuzERMPz9yTijROWbMThW00pcLv7sbVuTy725UqGSErzNWZTdJQOT6nyJpnMGH9WF2uFGKPEUe
 2JgmIHK_ULnjp3knTmyJL5ng.g6ABYEi4tB9WWwD6U9BEr8AQuHq7Qu4ni9vaGyDn7JWuv80XKvL
 ftqw9w6wL1b1ICl_MEnroY6W1AMwpZJ_PYMwgtmReQpgri1N_mMv8aRLBD7fS_N8spmGKi9LfBAk
 5upaHNFUgHq4NqB6_NEmMJvAUA9fTb42VHaKK_fXzJTaht_W9TDrPqTUqS0j31A0.u9vLih6El4L
 zmu4zphZOatD3LWiPPaGdDG_8..kpmPmgYei3sVWvW25L2CsB4mTE4lyrQimVJFCQjHz_sQPFi5h
 Q_C4gVyLrwJcmD_KOeQT1q76YT.o14zuKc_g1_KcN5EabrYikFCdwd3dq6hid_UJr.KkijVjZGWc
 vo5hBOQfyZX19XyKjSFE08YPYLs4N3Yjj4tzhOT1M3XVjtE5bSggTClqoQWinRDGlSaoaagYYb_K
 _CoUBaKlnZZPSEHhsN6BAfrxArHrVMOHZapsJve.dKBCyTGGwzLVUlHiJWUCJUy4jBt4PgtJ64Ud
 TIbjW2ukuWMAgJ0IfsfQaecyfKS4WKUkmmOv35m4bYVW4Bnz5o5_tiF7MGipapWVIJYM3frYyrbZ
 nuX56YxABuJ4.ceahe8liN66hr20YduxG4lzl7G2abvn_s6ugpsS0bY1xbcUQW84.SMjoc5gpExQ
 xObw7b.k0YGcH35IQvjMyL5KhkzFjf6p0FJI7gATFgFptEKWJQ7rwnE.mQS91dy3N0rikwbn.LjB
 4GKRiGrKsLKgEX3IgbPKh.F7oW2R4qH3L39oej2KPN.iv75dImcIKfQA66d4-
X-Sonic-MF: <serdeliuk@yahoo.com>
X-Sonic-ID: a0bca023-4f5a-4498-a152-d9853cf88d13
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.ne1.yahoo.com with HTTP; Sun, 7 Apr 2024 10:02:21 +0000
Received: by hermes--production-ir2-7bc88bfc75-6cqn4 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 69da7276310ac0065901e6077002f504;
          Sun, 07 Apr 2024 09:21:52 +0000 (UTC)
Message-ID: <46ca8527-8b3e-4894-a1ee-8f2663e457fb@yahoo.com>
Date: Sun, 7 Apr 2024 11:21:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: qcom: Document the Samsung
 Galaxy Z Fold5
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240407-samsung-galaxy-zfold5-q5q-v4-0-8b67b1813653@yahoo.com>
 <20240407-samsung-galaxy-zfold5-q5q-v4-1-8b67b1813653@yahoo.com>
 <32b01e4e-dcdb-49bc-90bd-a75bb34c5b1b@linaro.org>
Content-Language: en-US
From: Alexandru Serdeliuc <serdeliuk@yahoo.com>
In-Reply-To: <32b01e4e-dcdb-49bc-90bd-a75bb34c5b1b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailer: WebService/1.1.22205 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

I am terribly sorry, this is my first patch sent  here, I am still 
trying to understand what and how to do it.

How to proceed with those missing tags? i should create a v5 and add them?


On 7/4/24 11:01, Krzysztof Kozlowski wrote:
> On 07/04/2024 07:38, Alexandru Marc Serdeliuc via B4 Relay wrote:
>> From: Alexandru Marc Serdeliuc <serdeliuk@yahoo.com>
>>
>> This documents Samsung Galaxy Z Fold5 (samsung,q5q)
>> which is a foldable phone by Samsung based on the sm8550 SoC.
>>
>> Signed-off-by: Alexandru Marc Serdeliuc <serdeliuk@yahoo.com>
>> ---
> This is a friendly reminder during the review process.
>
> It looks like you received a tag and forgot to add it.
>
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions, under or above your Signed-off-by tag. Tag is "received", when
> provided in a message replied to you on the mailing list. Tools like b4
> can help here. However, there's no need to repost patches *only* to add
> the tags. The upstream maintainer will do that for tags received on the
> version they apply.
>
> https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
>
> If a tag was not added on purpose, please state why and what changed.
>
> Best regards,
> Krzysztof
>

