Return-Path: <devicetree+bounces-266912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLFUFS8+mGneDwMAu9opvQ
	(envelope-from <devicetree+bounces-266912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:57:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8908F167168
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA9D53069D72
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB76633F394;
	Fri, 20 Feb 2026 10:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UH0OrIss";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="STQuzBL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD81033F8A4
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771584930; cv=none; b=fWCPZ32Q1VRNFr3Lc0yfZByV9Ur74dfu1/+ozsBo+2fVPp4iKM/Gf8EEHCEWOJYOKo/xa69N01vlWi8ZsDdCokOx9M59vaZpsxE+ZbOIaXRHSQEyC93VZPTI11/dW7UwzoQEScp+9kxXvGhbUtqs2NnLHuV/PN87s00RLvg/RSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771584930; c=relaxed/simple;
	bh=hXF+x1JktK+yexS5usTlTihc1s5axR4AJo0jbLjdnvI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KP1S2xBOnaxAMwadi4jJ9I7Xt/kAVrg4fNnCfpVpghD2zIMu/DbtYvhy0l3kn9wrCXnHQikaEtn2bXqUROGaeWVW1TP4C3KtDVYCfPa846lQcWtCHwYQlnDyWGoxOHTAplkDXiEHY/LcD0OmiTTXsxBX1rkMLVVBdx3nxYdMjh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UH0OrIss; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=STQuzBL2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K7qv5U2801739
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:55:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3kSV0AQLn3tRu3E+qS36x6LCMF/WGHUdPt9CYSzJgAQ=; b=UH0OrIssX1+BKFYH
	Z3reK32zCd5+zmpso9pCOymzerk2fCoqt3zDU9AcQNsbFPfjLHyXnZz+xpMNRAWS
	2NPCYomkvdI/9AoyyZyOorUBMXxvcbKSUlkGUnum4nw2eDcPfFrnkubh4AclNknQ
	h8KPUW2D1yq9YCZwj8rJn5pv9nNohN+G9epjXr6aSzghFIneG8XSo19No6dyvXR9
	vTgzC01FOU+Rpj4JLtX23OhziZfa+zv1QXrneDtYkiLSyGYsmVUkbkvS680hGKJU
	Y1Zs+SdnLdyKAPq9VdMtm9AcWrRuV0/Ky6yXf8AJJ2p8sUf6hr8YMaS6b26Mf3jJ
	/CbhHA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cee2s991c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:55:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb456d53a5so192773585a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771584928; x=1772189728; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3kSV0AQLn3tRu3E+qS36x6LCMF/WGHUdPt9CYSzJgAQ=;
        b=STQuzBL2XdQlOGknIQXJjmewL3sNGjHSSiEPUGiXaKhzVXK2uvWMcfbCY+DcJGXO9R
         K7X6x3hVJCbwN2Qrr6BojJ19XIEONXRMrmdee8A6PCZ1wMhFQVNX9h9gCrAFUX8D+Gll
         twgQ5ciTAdo1wj0MMpOwdcUZ/UMdOsPiDURjHSPuFKOO08GnWgDbiLeToC7qZHZ2lHvz
         l9E801/OpdNf1/HAJu1syC5o+KKWErg+K2NawHcsjVxNZaA47dBmfVz1NE20TuEs2Cby
         pAYmPdkQGuhGKuhcjJ6pV+BAj4HF5fRxZucmkGPP7VTh5Bbum294JccpwxtpCk1kBzIg
         Su7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771584928; x=1772189728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3kSV0AQLn3tRu3E+qS36x6LCMF/WGHUdPt9CYSzJgAQ=;
        b=kI7iarLCnRq6pHQGydKjsT800oM+380Tr58ahAqX6g86xMre1s1mLoa74mWw8I07+t
         EQKN+aZWwcKiF2SApzf/5LAVOkCJuPElalmAoGr5F0B43pNsyHhIpFQmAen4niJDDtla
         qQLPQDeW9ej6ovePROlT7laWr6gN2FttEMVnB/dGGHD7ktk3PwVM9mbGdeWVnCzyDjpc
         EFXM+A82qnXbcNwVKxRPsCXscgAPu5VTyESLq4uUN+8rx+oaS3k2TFdIew7NQevZGqNJ
         mJWrHn+qaPffB3jp1pXPB/xQaMHncPTL7namFqr64C7tdvXS+Bfs8yRVyOR10VxzG2UX
         itqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUNqf6E/zf+fKF8VE3tQAH5MEGDhFx0q3kIPt6GSdtqEzO6k+M8YBlQ1cvizv/tuWsxQ8+yKvVjHom@vger.kernel.org
X-Gm-Message-State: AOJu0YwSQXz0z96qF94zooGknSojDRUgB5QU0vHvBHe5JkwzQfrrIL8K
	wXNannNWnwHj3PL5ndFekUsgjIYGJ1VXLTadImDhTgOPNLYERbIk7+ZyCVewxl4mCToPX5RDsh4
	j6Ii2kv0ishZRlabPuG/6eiaehJ3+iPDfQ+hVgKVntUM0rkMUFUH+0AdUW39zxS0B
X-Gm-Gg: AZuq6aJ/r/afjbEIJZk2uuibJyUf50om3jewSDBI6soOcE3lGwlqeOTw48hFK23y6KF
	o7ZWgso0P0heYViTigE60A/p4jsdiMN9ab5uqovPPcC8s9xDj+ZZFgVxWVbqObyi1J1mv9SJtiY
	0nmsDYdUZ+5YnDv1Orho+3hZw7BnGeKX4WaEFOZQfygg07fMgjtDsODw/LwMm+i6K7xeOxfyYbk
	uMkIrlQhwU+yliUFegJ3Xetj0YXa3HsuE/SphXXXBUaQLnD59UzQ5P2yWoXfAsZBxrAONWkO8dq
	vMh7kDOsdzCTdyA5Y/1cuW7toz8Gign/+MTbrwotiAlH3A/9FCb0V8HmIrsjwgic3F+DSVdodWp
	LbLEwZ/e5ghr7F2lTCayoJ1yIzOdI8vwjVq5nBVlJh6Mya19WbLItDSfssZ9TzP9EDVF8J/REbx
	xZ1XY=
X-Received: by 2002:a05:620a:1925:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8cb408839bcmr2377650585a.5.1771584928169;
        Fri, 20 Feb 2026 02:55:28 -0800 (PST)
X-Received: by 2002:a05:620a:1925:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8cb408839bcmr2377649585a.5.1771584927756;
        Fri, 20 Feb 2026 02:55:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e38f5sm4675458a12.19.2026.02.20.02.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 02:55:26 -0800 (PST)
Message-ID: <13553877-a4d0-47ad-88ce-3d4d5b353101@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 11:55:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8750: Add camera clock controller
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260220-sm8750_camcc_dt-v2-1-e4b7faf35854@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260220-sm8750_camcc_dt-v2-1-e4b7faf35854@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PF5Ztz-VT_qU2LhsWujF1QnSQGzx8Tu2
X-Proofpoint-GUID: PF5Ztz-VT_qU2LhsWujF1QnSQGzx8Tu2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA5NCBTYWx0ZWRfX+NIfbHyhwhJh
 QC1NDX6rpFpptx78cAq1Efnvx0J1f02yjjPYImpSKF2ftk3dmIVXZYdu6Fv1JnKfnejkpWYEpxn
 RpF3spSe8LZOmvXnVUvHKaolAiZr8x2kAeUV4tsbOQXOeh7WZTKGblqnpjIS/M4Hv0wGIwggoOR
 PZta7C+jYGo6y/WF6p0UFxmis5nMDV2BJZlsVXKzouQd0Z3WbCj9Bv5ZHT3xBATY8VRkZMyySWg
 GOeYVZLy8FvWVGtuVzXVWCAt0lZaTMYRU3IX0S9XDqAa5Jl2ggrjBKelP7c5ft7StmjLO+FlaML
 zUBMiJR0YYSMQ6zR15l/dRKWLXCekc5TPPwVTxCDDz2jRBU34YKwTmXdk0AldzGn3l9ZQdOkvWz
 Rc4gAAVVQDRlONxSbFNGBjmVya+GSHFSiCOLYmGhfanCfEb77zlwosj5hCw+55qxebbyFu/ycJZ
 5eUP6i+GumgX63BGG3w==
X-Authority-Analysis: v=2.4 cv=NajrFmD4 c=1 sm=1 tr=0 ts=69983da1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=ETP-j5Bw7z56Rp2nCt8A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 phishscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-266912-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8908F167168
X-Rspamd-Action: no action

On 2/20/26 11:28 AM, Taniya Das wrote:
> The camera clock controller is split into cambistmclk and camcc. The
> cambist clock controller handles the mclks and the rest of the clocks of
> camera are part of the camcc clock controller.
> Add the camcc clock controller device node for SM8750 SoC.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
> Changes in v2:
> - Update the MxC phandle to use MX for camcc node.

My point was that both MXC and MXA are used

(I see MXA particularly near CSI[24]PHY, but it may be a fluke, please
take a look)

Konrad

