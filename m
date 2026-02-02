Return-Path: <devicetree+bounces-261739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCEKGDl+gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:36:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AD2CB0F1
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 56F8130065ED
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59FF635B135;
	Mon,  2 Feb 2026 10:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UknFq7zI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eC2XYFwI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0DD35A92A
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770028599; cv=none; b=sd6QCDqzOLtukwd0jztGtasymh+RUxH3mukDT6ZWiupGCyJZfkjo0QitWyr6lZMhwno/pSRczDRdZhBYtMRuq/D+liVpUlLD8aMFnNPh6lMIKXbXjEwDgg6AZleg72uh+JRpwzi/dUbm6LNj5A0xh51d0cgB2ELclm/YBmDi9yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770028599; c=relaxed/simple;
	bh=Dm7wU/ioQFqkhUyC1RamBFWfH+FpK3uxdLAk7MJW65U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J/n95H7gi0RbNwKhPb5eDlxfDqBkI+jOcS76U6QfL7dIyjFvlO6w47Sd1cUGSiNZJ14yZyLbDiOPgLFcNEya4Nk0p8qIZcgyfFrh94d3i3cODwBYQes322h2aRWBz6ql2yM16RPbQTwt8FcDkmp+ENWFCgGkXmsx3G6JyXFhl8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UknFq7zI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eC2XYFwI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61284UVp1107334
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:36:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aQzC4gSlNuY78TwSM+oBSOJm8w0hZOjRrWGhxRv6l+k=; b=UknFq7zIauESxvyp
	C9jPywQz2PPAgOgu5AOpTNUdWLYHzEPmezR91d12BOtC4NO4StnxEkkCfAOZPlQy
	BLjQfKiP/UNsmQvLwyn3Oaqm5GqmJ0ZFc3SJ0wMmztfzL1pdRt+6DcU9WEy9MS5a
	RAYApcAUW8dolfsCM4HRJR1eubQTm/wJpZVjNxplAEP1il26Sn+tAVWpQntpvjmn
	fqOUu9lBPEoWISfBwtE66e+fVsEDyZ5StZGW8oBqMTNr2tgrTr9lgtDMXN42ysbx
	N2Gm932DBscRzCZEDyuKM9BJQwQNeCckEMinGpTiq7pVP3UlleTBwV/SMZxntEjw
	jt0tBw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as0w3uq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:36:37 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-822f926eff5so1870607b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770028596; x=1770633396; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aQzC4gSlNuY78TwSM+oBSOJm8w0hZOjRrWGhxRv6l+k=;
        b=eC2XYFwI51f/rsvjZIncIrHHNO9pAvJhcelzvrzV7POBQWaE0pW8aAvNFG7bLYUFhP
         GLcL3quMxGwuzg8sW8RNXeL9U423cQnh13e7dK7rNf8dKTy+vUxn5scvIpPXRPK4+4cA
         9SJgKDzNeZnC2xkGzOteFIA9lH8lIazO12zGFkdTGP3R3Z9c64abVj0gzswAJPF2cdYt
         kjoyPrUQJxaDKr4LXReOJBBPBrLWiOoh4yNdER3Pj3lhDzJEJp5poXURM27B3WzG7N5N
         6jfOtCkk5fjah5w+f5BOG9MGU7VVqAARcA+/HP/ofo1w39/1QV+B4Ts4k0O+uFS1BF2t
         s4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770028596; x=1770633396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQzC4gSlNuY78TwSM+oBSOJm8w0hZOjRrWGhxRv6l+k=;
        b=q3n8eE+FZDq9kJbL8UChJMw8wyNYJwg0wAWrd1HWDYPiu0b26TEXeDQ3QlH32MtWZI
         h3Og6y2jMd28TrCtgppnOUa54CTKBZfGuAo/hFbNb6H/DoFhBBCCL/bkxibpGupV0iJw
         gypjTscKTyrxgiInQ3sfkX/BhfOOn8deFfNohQImdpx4AG6lHM1MPS1rBR+MA1L3NoCk
         LNGyr8Zp1iFR29fo8JPJcPa8fQuMcAJ/Dnw5gCrymF3QIBXCSWAws7wDE+ER0ojrzLtF
         jDK0C8wYEG0h7W6T8ohBwAykKy6CkRoov7g57cw2nS5W6nJ+1z78I5orAKpnBzddDTXs
         AVhg==
X-Forwarded-Encrypted: i=1; AJvYcCVflcRh/ZLrm+MZM+QzuCqc9kbzZHKsLU9rxXvpJY2RRIK1BwHtGWFnZyBIO32zwgjv6QqP6lZj8uND@vger.kernel.org
X-Gm-Message-State: AOJu0YwEmqH9x+2pmJo5xhuYNImNNzlisL9kRl9wsnXh4fA3aqHyRZSw
	TbPt+f/cbr6bD6A8+BhY8ERXEQmsYij/IfOEYRmrfdiJvM9ucpaGopbxMM/gZXYzXz4lU6qqf2V
	ycFHOHaQDCRuk+Q8atlmIm6Z24bSOeZA301OAFxfTfMUHMngI3pHOPM79q+rlCDa8
X-Gm-Gg: AZuq6aKUcgaIj6eQ55PnxCl3sZ5y0gAvNb3s4oV7tRah6xo8KOczYy3hwHHNQZkKcA1
	B9fRR3OQGI3ILM1nOBf3Wim1s19FFFcpNA/2YEPREFdofDd6ywH0Z17Ugb7u1k6K0ZdtZv9Hmba
	0h/926qQi6mUldhbpzQm7WcBEYyx6wGUuUztSRF4JCGbhSYMRZ+D2W71TBKCvAGRhj2U2yCA3np
	WfZaWiBKzdR3Ommt58glpqVpMS1vjvkUfoHrwJ4+AK+lnqk5usCVde4y+4OUxniRR4sYH1om/OD
	fYMjV7g9lfKz+4BHOncRFQyyiTlI3N2AQh99NbAkhrL2pjyN3kuX+YhIs3lMNeCD1tF+4QHaVJf
	GgOlWkk2ExNsHW4HvUUKcxGIba2BMzl0bZqBkHV5jnA==
X-Received: by 2002:a05:6a00:2296:b0:81f:394a:4897 with SMTP id d2e1a72fcca58-823ab75f2dcmr12860371b3a.44.1770028596326;
        Mon, 02 Feb 2026 02:36:36 -0800 (PST)
X-Received: by 2002:a05:6a00:2296:b0:81f:394a:4897 with SMTP id d2e1a72fcca58-823ab75f2dcmr12860326b3a.44.1770028595874;
        Mon, 02 Feb 2026 02:36:35 -0800 (PST)
Received: from [10.204.100.98] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c241afsm17930181b3a.56.2026.02.02.02.36.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:36:35 -0800 (PST)
Message-ID: <9c334393-211b-4b3e-b9b3-57700641933d@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 16:06:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] media: qcom: iris: increase H265D_MAX_SLICE to fix
 H.265 decoding on SC7280
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
 <20260131-venus-iris-flip-switch-v4-4-e10b886771e1@oss.qualcomm.com>
 <70517c7f-92c2-4b2d-ada9-9cf0fe9371a4@oss.qualcomm.com>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <70517c7f-92c2-4b2d-ada9-9cf0fe9371a4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NyBTYWx0ZWRfX03Fs7Zi6dB85
 DbBLih/2H5HYWo2e2ZA5sGHZE2gIVR+s+tnkR56CcPshIQQP6LY9fBD2baHXXBSsYWeVvSF3pdX
 rvPB8euNNuRzjH16+p1GAC/Ykx/9n+IvITdGA8h9SG5o72HdQtbhg5YTcxM6Y9nhhPLkBEsZN1E
 qFOfvWMlOj3XiySEYiZ3rXxaRau4JDJJhabljuf/F3DDiW6cDl9+RMZkiU7FXOIASY3pAQf8Kmu
 qwkrHdRnz6zBX2UW5ym91MOxpIbqEs6te1zqEhfGtULl5O0pSUqAY7uW2+37V5A6dF54PyusiEm
 8C467K8asKBh1Ths5TsYw92hCo5aq9dbUS3Vzk7K94pKypLSvBwuFsYusCnv7/UDmSE+UBR3m4z
 ZFatCPo8cVpP0GYr6f4yAcV1ri4U3KOh6WTvlinSmdHOwG1Z5mzMtt73tduwTiYSiLWi4D9NAAz
 RlCTIfGWI/fzpUBG9Iw==
X-Proofpoint-ORIG-GUID: YB9j_FGUjXm7wEwMfxTDlT7VKMlL5Ifv
X-Proofpoint-GUID: YB9j_FGUjXm7wEwMfxTDlT7VKMlL5Ifv
X-Authority-Analysis: v=2.4 cv=MYthep/f c=1 sm=1 tr=0 ts=69807e35 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3nfNMFReYfEziauJNS0A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261739-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 04AD2CB0F1
X-Rspamd-Action: no action


On 2/2/2026 3:53 PM, Konrad Dybcio wrote:
> On 1/31/26 2:58 PM, Dmitry Baryshkov wrote:
>> Follow the commit bfe1326573ff ("venus: Fix for H265 decoding failure.")
>> and increase H265D_MAX_SLICE following firmware requirements on that
>> platform. Otherwise decoding of the H.265 streams fails withthe
>> "insufficient scratch_1 buffer size" from the firmware.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
> 
> Since it's matching venus:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As a side question, is there anything wrong if we allocate a buffer that's
> bigger (or say, vastly bigger) than what the fw expects?
> 
> Like, if we allocated 10 GiB for $reasons, would the fw just happily
> take it?

Yes they would, as long as its bigger, they are happy. We are already 
struggling to get the usecase (concurrent ones) within 4 GiB, and with 
vastly bigger internal buffers, we would even worsen the available iova.

Regards,
Vikash

