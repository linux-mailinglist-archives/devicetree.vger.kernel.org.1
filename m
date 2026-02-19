Return-Path: <devicetree+bounces-266669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIpFI84bl2k/uwIAu9opvQ
	(envelope-from <devicetree+bounces-266669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:18:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF42215F668
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DB2230221E7
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E40D33EB09;
	Thu, 19 Feb 2026 14:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DMJB9Bpx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ky61syfl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D1533D6F7
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771510715; cv=none; b=CSbcg/C5pvqCmEMrONo3MzYgmevOXH9BXVjkGR0x5mlEhTWJ/YCcmqkmj9fepUo3TptCkq+aErDoDmqOELC3snB23nSARf34Y8FKx+YMRbeV0jckA+GqJcJME1g/VFxh89y8E+eyd50VfmfVyI2BV7LIBSst6VUAam4tQWao5EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771510715; c=relaxed/simple;
	bh=l2+yFArAt6HLkcsncg+FDTIGCg0hoeriCBLtZp05nF0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GENzEbbPsLmVJEAeM2nLG9KJMJXU/n9WgNQnjpdSKZncVO2Bq612IlBub+Agr5aYbTwdvCKm8jEPuB8JhXQdhv3+NPFeOs6I6YISx48VyN0XgyP99qWEqbcQBg87gZRq3E6lV8Gh4i5zNk5GLCQXim4CrV3SOE26eqGLIFbxfvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DMJB9Bpx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ky61syfl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JDLbt9159747
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:18:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fI+C+WM3mKxwnH0W4AOtVbzKTZRTzsan7m781umLAjo=; b=DMJB9BpxMWLVLgv+
	r3jM4755MQco87FiotYp668gQRoT2lTX/MTV2GDE+/QLOSjAoOrnZtmqvLnnHKyX
	khmtrLnvN9TuZ8XJ09b8RKrg+JZNxP09b2dnaOFSWLHxwpRmV9GHqE0332mYrc1L
	I2vZzeznY/P8GesO+W6gp0oLES6j/lz6AkqUGPETfcYvo7Wrrw537E/RZ7Es6OwW
	C0M11gFDvzFB7fn1wX8GwQWn0qYi7eTCG+L+fhECyZDuR1MDh+7Hzmy0mHqqnxIQ
	I0DH9DWkR60G13IG3s/MfDt/9N9E8O6zHImDgzUrAeRLwCGPAMWsfF63bf4LvEAD
	ysHQXw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrpg9qjw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:18:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70cb31bcdso94092185a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771510712; x=1772115512; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fI+C+WM3mKxwnH0W4AOtVbzKTZRTzsan7m781umLAjo=;
        b=Ky61syflwiQm/AVn3RfjsGYbmjyq0LqHLPPBeG96L5IYSmZShX367TTrQ8LKWTXeiL
         YRhjXfzkut53qj8jaEF94Jsbf+m2wblwKi/dzIkw37bPDth7geGhC134lHtyJJ/XUZfK
         zS1Fy7B7f+GAA9MueFdzlwawXqacvOZIDtZdQ5ZRKva4uJcYPhvtvv9g0fo2bTkq/82C
         8j6NjM8UfhjSDXKitM57T0DFhETzZnWmr2sfMCBtq6PzTD9+UpimTy7qr5lWOofW2S38
         ZVwIaMROC8TSXKDgUPUNQ0EucmaVtK37QdkOFSYI0/DP7fkKD+arh2H73urV1oAygCsi
         bJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771510712; x=1772115512;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fI+C+WM3mKxwnH0W4AOtVbzKTZRTzsan7m781umLAjo=;
        b=vbaFmC/Hz7FzLJxdlCWX7+zq95LZcQ6a3b63LG/Pq9HEI87aMEvroHAX2eKhnjE0kW
         tkbNWzcqPvV4TAmYTWTSgePxjQkOzfxs5qeG5ypVWsrRTikjiSNmgY0IG5I0dKagSqxW
         96jsWPRaIYHadYUz9u5wSpTRdKPC5CFo3FFe9ua/HcP/B0MGAMg0oCr9esYF25HmroIi
         wnD6ON6AcqqO4H4Ocl2mh/Hi5NpK8tH3bBTIni+LD3n3ikdfIzDFW2StmpA52AKTo1gG
         9B5srZi+Dld9Eu3pl5Jrnpig4GUuvrYzdukyIfKv13sgusYZ8dRsm4Hyq1iryV3o4MAg
         CtKA==
X-Forwarded-Encrypted: i=1; AJvYcCU2hwbSGmlqi2Xfa4KdnBu8QdQcMUNbFy/905vNT+5l5ZjKiWa9TJPpbGT6DyP99wbxdZBeuGvD+kwc@vger.kernel.org
X-Gm-Message-State: AOJu0YymD29JRAxTcgjTUuerRNniSOVzRI5bQKiQu5yWnROYS3aJm+xJ
	OwH/9ou3JKdsQE+DiVH7rRLA6EjX6XELiCBkPUbJ/GE8QvSHIew/TTUnZfSiH145uL7CdkE+acM
	ATVZVJSusG/dGzb9sDpoP4be2Zug57RLSFTAcxZcv8+J6LT8bs9Sl0In89pkjzG5d
X-Gm-Gg: AZuq6aIDzbz9S1Re/ds+SibZ2SS9W3iWCPYLuuc68jqi7/KJ0ZqZYBB4dgNF+oiKMai
	O4nkw+gvzC1/4+v5XViTjuKNnVi44YhR6qzmxyXalraXJvZhfLR8cxiRkyFWSmvs/W7DHRqHKSp
	fTGHYLooaFgKBuIY3Lj5FUKMPM5MyHbaayS0QZ5/ZCRdCg1AziNHfp7HT4nzWVOc7QNju6ZxP5l
	HZGydUJ1cnbNmBCd5nkZgV1b9sDELW59ifK1TaivRMELEh3K/TsVFl+or4/iFb7cr4wCnkB32xD
	MLEPmbDz2oztFy75izxIhgCsOcKBl2DZVp73tt0xiMcuPwAK5hZamyN8/qv5cIyQ0Ls4hJruqy3
	3+e446mg8sPbYCd4W0j2BTBoZ/b/h0lQcJ5g1ju30IUtViuP6RwjvK5GStk1t6GpHazmlWSviNb
	1j9F4=
X-Received: by 2002:a05:620a:468b:b0:8c0:c999:df5a with SMTP id af79cd13be357-8cb408c8f1emr2037398785a.6.1771510712011;
        Thu, 19 Feb 2026 06:18:32 -0800 (PST)
X-Received: by 2002:a05:620a:468b:b0:8c0:c999:df5a with SMTP id af79cd13be357-8cb408c8f1emr2037394485a.6.1771510711456;
        Thu, 19 Feb 2026 06:18:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5b2e35sm5303818e87.82.2026.02.19.06.18.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 06:18:30 -0800 (PST)
Message-ID: <e9d543b2-6412-43f8-840a-044257fa9a96@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 15:18:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/4] soc: qcom: ice: Set ICE clk to TURBO on probe
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20260219-enable-ufs-ice-clock-scaling-v6-0-0c5245117d45@oss.qualcomm.com>
 <20260219-enable-ufs-ice-clock-scaling-v6-4-0c5245117d45@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260219-enable-ufs-ice-clock-scaling-v6-4-0c5245117d45@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UT4puUTsc3D1pBwfI7UxW7AJSlXVA1UR
X-Authority-Analysis: v=2.4 cv=JrL8bc4C c=1 sm=1 tr=0 ts=69971bb8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=kiQjUq8FSzjVjtPiR3oA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEzMCBTYWx0ZWRfX/YYgyqEkm+c5
 xuLma2d4AZk2rw0WW+EeCPq1b0CcZrDdQvHCaaonVlkP4AmmOYhoWti6azIWFBTG7lifL1nBXSd
 Vthuw01dDy8eTfXIJCWAnxsvXaSIJEYCQfqJfyItKDD9JCU7LI1rGKyAPuQvTOcycmXNh3LqlsX
 1z/8o8/GQk4I/N/q4Uy4lVqKODd/erZX4NDUSR2A8vTud0lzBIFQyTHXj/adbTc21UBlI3JsSy2
 zJNSEhq9luqfMYDgGEZo+qjdB/p7sQLL9/ctLGlq/21brK+0aJdzLGJ8j+zaqgc8qrmWPsgBA0c
 NhJsPF8GQGGY1YIeGkzjJIFU7eAKXVQHn2wZu/4RpainL3wMpmQOTLCTjx/cUGI6GfrHpwtH6Do
 Y7MTLJt7Eadm4OH3W5Okyf0SQ/ozKvq2JDUfPZvX9Bx9ptjBsU3OqKE1PutvZCPfuEsBBQSr2RH
 eoZZJ4Jk3ZJQU9/JvFQ==
X-Proofpoint-ORIG-GUID: UT4puUTsc3D1pBwfI7UxW7AJSlXVA1UR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266669-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: DF42215F668
X-Rspamd-Action: no action

On 2/19/26 10:39 AM, Abhinaba Rakshit wrote:
> MMC controller lacks a clock scaling mechanism, unlike the UFS
> controller. By default, the MMC controller is set to TURBO mode
> during probe, but the ICE clock remains at XO frequency,
> leading to read/write performance degradation on eMMC.
> 
> To address this, set the ICE clock to TURBO during probe to
> align it with the controller clock. This ensures consistent
> performance and avoids mismatches between the controller
> and ICE clock frequencies.
> 
> For platforms where ICE is represented as a separate device,
> use the OPP framework to vote for TURBO mode, maintaining
> proper voltage and power domain constraints.
> 
> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/ice.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/soc/qcom/ice.c b/drivers/soc/qcom/ice.c
> index 1372dc4a4a4d0df982ea3a174df8779a37ce07c6..a60a793f9c230e08ebd7cae89a828980e762db27 100644
> --- a/drivers/soc/qcom/ice.c
> +++ b/drivers/soc/qcom/ice.c
> @@ -665,6 +665,13 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
>  			dev_info(dev, "ICE OPP table is not registered\n");
>  	}
>  
> +	if (engine->has_opp) {
> +		/* Vote for maximum clock rate for maximum performance */
> +		err = dev_pm_opp_set_rate(dev, INT_MAX);
> +		if (err)
> +			dev_warn(dev, "Failed boosting the ICE clk to TURBO\n");

I suppose this isn't exactly critical, but should never happen either

Nonetheless, it's fine

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

