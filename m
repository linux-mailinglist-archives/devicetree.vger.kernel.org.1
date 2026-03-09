Return-Path: <devicetree+bounces-272920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKWVHwrArmlEIgIAu9opvQ
	(envelope-from <devicetree+bounces-272920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:41:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEE2239002
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2693A3022543
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 104D83B7B95;
	Mon,  9 Mar 2026 12:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MtQYuGpU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MmGBrPUy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F75D3B7B80
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773060097; cv=none; b=Vuwt2TkT1vjezycTPL2NAuTjUnq+KFqxnENxTaaBS1m2HdtAiOL5LQbj5LYrTXok4mS/pcBE/XbrFpyUOM/4c79NbT1+xAp/D0s8lGYmerg9kRl6bmyzoZC4FsdZSQ4yOxUHXe1l2HMVECHWJJiNTgICKjXw6SqG0lxidlczfa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773060097; c=relaxed/simple;
	bh=dwxOFF1jIfAEdxzcMU7a610M9f/ZzdmCVIYiAVML4Lo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CeqzV6UeyPNLKj/bx5jb8CUU46lavXsE8TWRJZCcxBBV0+XkPuJ83Al7wTIj8yHHT+exi0Qe1r5YI1TOLPcXAndnT8/JoeQ555UnX5bYbVPAGgEwA4vFGecdFeUECSwJXGdMYUl3EyP3uRACIUcc0jznJXQIW144s4+AB9i/138=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MtQYuGpU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MmGBrPUy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629AWTj0255307
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:41:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	voh86L/vAqmB+vDtOZ/7vMT01dDlIpm0Ps/jEPksfNg=; b=MtQYuGpUMCNwSB4P
	w28RoLWAfAdxUgoxEZ+jQVp+CflWsyyndYJrUkAkl9z4MUoeB/hfiqlSNhzdfh/O
	xbTUG3nZmeL1Z44ivYqcaJ81MML/Z8kx2X4HkSsFZ2tYZNI/rYCj70zMqoeFBDSK
	kdnLaAeohg6AspFpanp+cDJ0t64rEwPb/4T+X2AbkFm+265o0dGVE1ZTKwxXQZpB
	Mb5KbuvA40eDAOoVc0n9YFBrCIE/TlhMv0DTVXvYT9KJ9lTnuixmkNj6FLlhtPhi
	/iOyuSChL+p0LWw9gNy1By2NuGRd/FZczNZuHKAUgxTz9igBpUgMKkrHzY7/x4WK
	xq399A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crda9d7ae-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:41:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd8e89d19bso34325685a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773060094; x=1773664894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=voh86L/vAqmB+vDtOZ/7vMT01dDlIpm0Ps/jEPksfNg=;
        b=MmGBrPUycaRTtrHO6bBY9Ejls/N+/Ki3w/urttLt/ID15XtNANunqy+S7+6CjoOXa+
         Cp5rmadcB/DI9Dd2kErx/OMSJX1r2k7fgJgkBt1ovWfhNu4hlqeeuRe6lMxkaHrBi1RD
         MI+PMvYN/hTgS2uJwD1wY35aAmiFXq6Y6XenFFOK27X8IQsDEJTQkbuePbG+0SH8hnU+
         G+4pxSykR3ljcMBgDw2Z5OPFx/vf92LNURKYMOkFXue1kVwCsW/8J7SKM/QOsGKQfsYN
         ClhJ56/J14/1LHqUULQQUO/Webx5Wgv1YQ/H0CjAXBryqZR8Hv/mDaDsLRJ1WpvLg+OR
         r7CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773060094; x=1773664894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=voh86L/vAqmB+vDtOZ/7vMT01dDlIpm0Ps/jEPksfNg=;
        b=n4IFYP8/rcChsyeE/wPNyPgYx89HMZIPy6P0qxdOzY0EWpKaQYU6FZQB+ajVSpw9gX
         qQKJnKvqo+ZPHB4VVRMejnu6WtAAi+oFFcPSXzBPsNCwjpdiv8BZND0Xq4BJl9GqwXnc
         WnBSnrWBZDtp4iN/ohXUAG/ix9adr369FUz/djINoh4ANiOQ853YNjIfmeSd6MJjNEgh
         Z6RkVkAzV4kkw43voZ7YhWfR2Z95sm8JpgXWW5ARmj1Z//WvpP0QPGQpa1wh1w++b5Hj
         frMigNbpuRgCqNVgwBLC2ijV3mUoUrq8w9W+008/uaZDjZWUiQgN3qxgvicyByui250G
         qDpA==
X-Forwarded-Encrypted: i=1; AJvYcCU1VrueMF6Am3RRXxuXezxJzAV6vzWwe2KN3jeYD6RiJvtwo95ncY9yLtvWdSzlChCMBXeiyWrENC+N@vger.kernel.org
X-Gm-Message-State: AOJu0YwiCeGu52JjRhYPZDWNXmBRqEvz6mvkfy0DZPTqLuh84VynOiiF
	6PniOXaZohQkYIVUlHQkjy5JUutke3pmTC52Xsuox/tfhIcM6+TFGQXDBgeFJ1gxCMvZb7B3O3U
	Wm+bQVV/5OshCzNcOLdT1XZJ3yr+VNxkxNcAjNuup+atxSkUz5v7WmY3PJXCGYglG
X-Gm-Gg: ATEYQzyOm5vjPPeUoQ6/JmmpDt6Q/iQNCgD7sEMbEBvu3oGf/io/xg2AewNcgmpbV9E
	u8GI87n60bW10y3mOp2yg+XL+UFIWiRbfNHf6doGkvLazohGfStLcur8zl++BfDEnbVBsB1tqT1
	vt6JzNBMwfFj6M5aCCTRfUET900JIEJ9RdR/BWkAKv4yL884z8xojvRISnLhD/mzCuh6CYOrwSd
	QTuhSPC1/gZ8jnJmMKeLsMtJeaUz2X9Fqh60KH6B/mELGVY2M2/vd4X3z385WrrLvNZUn/hTyMc
	zQUIZdtnNG+CiUXArcBRrAuGdovdpq6sPd8MsPuNq0Q7gAxssnAtxYZ2pqXE7wlbl1usr6GLHDb
	5rinnsHRJTGBbqNWcq21x/w/jZm8oDHE+V4lm346/N8wSMstWevxH8tKsTeOBy+2HJRsYwX/KoE
	f2Tjw=
X-Received: by 2002:a05:620a:7004:b0:8cd:8b9b:4581 with SMTP id af79cd13be357-8cd8b9b46a0mr254714985a.0.1773060093650;
        Mon, 09 Mar 2026 05:41:33 -0700 (PDT)
X-Received: by 2002:a05:620a:7004:b0:8cd:8b9b:4581 with SMTP id af79cd13be357-8cd8b9b46a0mr254711085a.0.1773060093214;
        Mon, 09 Mar 2026 05:41:33 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3c66d6dsm3210909a12.6.2026.03.09.05.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 05:41:32 -0700 (PDT)
Message-ID: <9c11fb4e-70b0-4d01-939c-853308806aed@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 13:41:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: clock: qcom,gcc-sc8180x: Add missing
 GDSCs
To: Krzysztof Kozlowski <krzk@kernel.org>, Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260309010214.224621-1-val@packett.cool>
 <20260309010214.224621-2-val@packett.cool>
 <20260309-soft-beige-shrimp-28ac6b@quoll>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309-soft-beige-shrimp-28ac6b@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExNiBTYWx0ZWRfX0mBXN8sX0Ch3
 fiEKzkmf5TPQ0DxJwg0luR+he+H1I/GZa/608rQq4KdGjhA7Um6uiVkea8hEF4LEhHIGhfMWaHa
 2KkC6sBJpbqMRIH24Rd6T1xLl52A5m8Wdb8cuRVHvfkBCrks3ZrjRhUSGDGUHzg6/lvKNjAu1/x
 8rM4Rp09G86shTeMJb1BsXKNX5qoPZMHYa8Nw+dYc5e2tuhR/bUrYivF2rS1NkjR2VHiryjtIgH
 r8zzo9VtgP2ezz329NeKKGLwYlpwlI98BZvRoObtx6V1ro5lJme6HUt86lfiypiR90KKs4O7Rpq
 o6IfAjmZ1D8G77YDpOUMlGH6IC7L1n/IGO/gSzbEKxiVvjvvCfI9Cml+Yj1j7vr06QL1nxKQ2T9
 xVSHHzTUIep8VsppK0RVJvcqvsVumnq5rSM4MjT39kqZmnQuUoNNE1QBk8lhokcOjBq2FeKFQOA
 yz1xB1zuR4tonYUzILg==
X-Proofpoint-ORIG-GUID: gOPJQrahzUAG_ivqIF6KZtDfdy5UeUG1
X-Authority-Analysis: v=2.4 cv=QZtrf8bv c=1 sm=1 tr=0 ts=69aebffe cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=O5yhVQSBzkC3hkWOAnAA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: gOPJQrahzUAG_ivqIF6KZtDfdy5UeUG1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090116
X-Rspamd-Queue-Id: EAEE2239002
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-272920-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 9:04 AM, Krzysztof Kozlowski wrote:
> On Sun, Mar 08, 2026 at 10:00:23PM -0300, Val Packett wrote:
>> There are 5 more GDSCs that we were ignoring and not putting to sleep,
>> which are listed in downstream DTS. Add them.
>>
>> Signed-off-by: Val Packett <val@packett.cool>
>> ---
>>  include/dt-bindings/clock/qcom,gcc-sc8180x.h | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/include/dt-bindings/clock/qcom,gcc-sc8180x.h b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
>> index b9d8438a15ff..9ed7b794aacc 100644
>> --- a/include/dt-bindings/clock/qcom,gcc-sc8180x.h
>> +++ b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
>> @@ -322,5 +322,10 @@
>>  #define USB30_MP_GDSC						8
>>  #define USB30_PRIM_GDSC						9
>>  #define USB30_SEC_GDSC						10
>> +#define HLOS1_VOTE_MMNOC_MMU_TBU_HF0_GDSC		11
> 
> s/HLOS1_VOTE_//

No, this is the actual name.

Konrad

