Return-Path: <devicetree+bounces-116883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCED9B4419
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 09:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01AD9B21AFC
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 08:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 843E02038B0;
	Tue, 29 Oct 2024 08:23:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C802038A5;
	Tue, 29 Oct 2024 08:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730190221; cv=none; b=T5p7j8SwhjDpCB/4iUaE+YQOC/I9/D9waBrVZDQznKOyQMDB4TTpFtgvaDAYUVUWtBJ4AQbx3Si3Ns/Iy5PqaD1wZ3itkFmP6k45NG7g/C3Y7Ci2kvXVDxC48fIUf3WZv999HGmsD/wuBKF9LwHUtoEuAdfNadGl+4Pm9ERAnPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730190221; c=relaxed/simple;
	bh=TgaKXL3c0JpFuVYw9xFgwAmKSwJ4djKdrDT/4zx0SqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t7+7Flzw4LTxCra5CdShOW2Qr3zIWgw2rt63EUwFxMs8ilUz3kc19oAhFM9h4J9QTb8WWkC9dy/8mh+iNDxOBftRozn+Iut/VgPZ8FAC6ixtyclRiO1jqXXO6Y/UBdNFaqaOluoNiKjKB6GaqRhEf6UDFG9MyVc0qJpx24vgA4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB63FC4CEE6;
	Tue, 29 Oct 2024 08:23:36 +0000 (UTC)
Message-ID: <3f48495c-77bb-4f26-b51f-8b2d44a4ec96@xs4all.nl>
Date: Tue, 29 Oct 2024 09:23:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/4] media: raspberrypi: Add support for RP1-CFE
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Naushir Patuck
 <naush@raspberrypi.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20241003-rp1-cfe-v6-3-d6762edd98a8@ideasonboard.com>
 <4d9e340e-2ae7-495b-8623-0d10398e1c3d@xs4all.nl>
 <02f05b61-08e7-45f8-8d59-f79bc20d076f@ideasonboard.com>
 <74286a86-51b9-4742-bb0c-583d70b1b0a7@xs4all.nl>
 <505c502e-b67a-4dca-8420-eb87eae4e170@ideasonboard.com>
 <59cf95be-fb53-4a94-bc6e-f9dca322749d@xs4all.nl>
 <5832a2f9-c908-4f5a-a3ee-9cb7d23ddab4@ideasonboard.com>
 <563347aa-4155-47e1-b71a-0107aed83eb6@xs4all.nl>
 <20241028151713.GI24052@pendragon.ideasonboard.com>
 <62073d7a-0a4b-4440-90e5-dcce0dec72d7@ideasonboard.com>
 <20241028163243.GB26852@pendragon.ideasonboard.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil@xs4all.nl>
Autocrypt: addr=hverkuil@xs4all.nl; keydata=
 xsFNBFQ84W0BEAC7EF1iL4s3tY8cRTVkJT/297h0Hz0ypA+ByVM4CdU9sN6ua/YoFlr9k0K4
 BFUlg7JzJoUuRbKxkYb8mmqOe722j7N3HO8+ofnio5cAP5W0WwDpM0kM84BeHU0aPSTsWiGR
 yw55SOK2JBSq7hueotWLfJLobMWhQii0Zd83hGT9SIt9uHaHjgwmtTH7MSTIiaY6N14nw2Ud
 C6Uykc1va0Wqqc2ov5ihgk/2k2SKa02ookQI3e79laOrbZl5BOXNKR9LguuOZdX4XYR3Zi6/
 BsJ7pVCK9xkiVf8svlEl94IHb+sa1KrlgGv3fn5xgzDw8Z222TfFceDL/2EzUyTdWc4GaPMC
 E/c1B4UOle6ZHg02+I8tZicjzj5+yffv1lB5A1btG+AmoZrgf0X2O1B96fqgHx8w9PIpVERN
 YsmkfxvhfP3MO3oHh8UY1OLKdlKamMneCLk2up1Zlli347KMjHAVjBAiy8qOguKF9k7HOjif
 JCLYTkggrRiEiE1xg4tblBNj8WGyKH+u/hwwwBqCd/Px2HvhAsJQ7DwuuB3vBAp845BJYUU3
 06kRihFqbO0vEt4QmcQDcbWINeZ2zX5TK7QQ91ldHdqJn6MhXulPKcM8tCkdD8YNXXKyKqNl
 UVqXnarz8m2JCbHgjEkUlAJCNd6m3pfESLZwSWsLYL49R5yxIwARAQABzSFIYW5zIFZlcmt1
 aWwgPGh2ZXJrdWlsQHhzNGFsbC5ubD7CwZUEEwEKAD8CGwMGCwkIBwMCBhUIAgkKCwQWAgMB
 Ah4BAheAFiEEBSzee8IVBTtonxvKvS1hSGYUO0wFAmaU3GkFCRf7lXsACgkQvS1hSGYUO0wZ
 cw//cLMiaV+p2rCyzdpDjWon2XD6M646THYvqXLb9eVWicFlVG78kNtHrHyEWKPhN3OdWWjn
 kOzXseVR/nS6vZvqCaT3rwgh3ZMb0GvOQk1/7V8UbcIERy036AjQoZmKo5tEDIv48MSvqxjj
 H6wbKXbCyvnIwpGICLyb0xAwvvpTaJkwZjvGqeo5EL0Z+cQ8fCelfKNO5CFFP3FNd3dH8wU6
 CHRtdZE03iIVEWpgCTjsG2zwsX/CKfPx0EKcrQajW3Tc50Jm0uuRUEKCVphlYORAPtFAF1dj
 Ly8zpN1bEXH+0FDXe/SHhzbvgS4sL0J4KQCCZ/GcbKh/vsDC1VLsGS5C7fKOhAtOkUPWRjF+
 kOEEcTOROMMvSUVokO+gCdb9nA/e3WMgiTwWRumWy5eCEnCpM9+rfI2HzTeACrVgGEDkOTHW
 eaGHEy8nS9a25ejQzsBhi+T7MW53ZTIjklR7dFl/uuK+EJ6DLbDpVbwyYo2oeiwP+sf8/Rgv
 WfJv4wzfUo/JABwrsbfWfycVZwFWBzqq+TaKFkMPm017dkLdg4MzxvvTMP7nKfJxU1bQ2OOr
 xkPk5KDcz+aRYBvTqEXgYZ6OZtnOUFKD+uPlbWf68vuz/1iFbQYnNJkTxwWhiIMN7BULK74d
 Ek89MU7JlbYNSv0v21lRF+uDo0J6zyoTt0ZxSPzOwU0EVDzhbQEQANzLiI6gHkIhBQKeQaYs
 p2SSqF9c++9LOy5x6nbQ4s0X3oTKaMGfBZuiKkkU6NnHCSa0Az5ScRWLaRGu1PzjgcVwzl5O
 sDawR1BtOG/XoPRNB2351PRp++W8TWo2viYYY0uJHKFHML+ku9q0P+NkdTzFGJLP+hn7x0RT
 DMbhKTHO3H2xJz5TXNE9zTJuIfGAz3ShDpijvzYieY330BzZYfpgvCllDVM5E4XgfF4F/N90
 wWKu50fMA01ufwu+99GEwTFVG2az5T9SXd7vfSgRSkzXy7hcnxj4IhOfM6Ts85/BjMeIpeqy
 TDdsuetBgX9DMMWxMWl7BLeiMzMGrfkJ4tvlof0sVjurXibTibZyfyGR2ricg8iTbHyFaAzX
 2uFVoZaPxrp7udDfQ96sfz0hesF9Zi8d7NnNnMYbUmUtaS083L/l2EDKvCIkhSjd48XF+aO8
 VhrCfbXWpGRaLcY/gxi2TXRYG9xCa7PINgz9SyO34sL6TeFPSZn4bPQV5O1j85Dj4jBecB1k
 z2arzwlWWKMZUbR04HTeAuuvYvCKEMnfW3ABzdonh70QdqJbpQGfAF2p4/iCETKWuqefiOYn
 pR8PqoQA1DYv3t7y9DIN5Jw/8Oj5wOeEybw6vTMB0rrnx+JaXvxeHSlFzHiD6il/ChDDkJ9J
 /ejCHUQIl40wLSDRABEBAAHCwXwEGAEKACYCGwwWIQQFLN57whUFO2ifG8q9LWFIZhQ7TAUC
 ZpTcxwUJF/uV2gAKCRC9LWFIZhQ7TMlPD/9ppgrN4Z9gXta9IdS8a+0E7lj/dc0LnF9T6MMq
 aUC+CFffTiOoNDnfXh8sfsqTjAT50TsVpdlH6YyPlbU5FR8bC8wntrJ6ZRWDdHJiCDLqNA/l
 GVtIKP1YW8fA01thMcVUyQCdVUqnByMJiJQDzZYrX+E/YKUTh2RL5Ye0foAGE7SGzfZagI0D
 OZN92w59e1Jg3zBhYXQIjzBbhGIy7usBfvE882GdUbP29bKfTpcOKkJIgO6K+w82D/1d5TON
 SD146+UySmEnjYxHI8kBYaZJ4ubyYrDGgXT3jIBPq8i9iZP3JSeZ/0F9UIlX4KeMSG8ymgCR
 SqL1y9pl9R2ewCepCahEkTT7IieGUzJZz7fGUaxrSyexPE1+qNosfrUIu3yhRA6AIjhwPisl
 aSwDxLI6qWDEQeeWNQaYUSEIFQ5XkZxd/VN8JeMwGIAq17Hlym+JzjBkgkm1LV9LXw9D8MQL
 e8tSeEXX8BZIen6y/y+U2CedzEsMKGjy5WNmufiPOzB3q2JwFQCw8AoNic7soPN9CVCEgd2r
 XS+OUZb8VvEDVRSK5Yf79RveqHvmhAdNOVh70f5CvwR/bfX/Ei2Szxz47KhZXpn1lxmcds6b
 LYjTAZF0anym44vsvOEuQg3rqxj/7Hiz4A3HIkrpTWclV6ru1tuGp/ZJ7aY8bdvztP2KTw==
In-Reply-To: <20241028163243.GB26852@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 28/10/2024 17:32, Laurent Pinchart wrote:
> On Mon, Oct 28, 2024 at 05:32:27PM +0200, Tomi Valkeinen wrote:
>> On 28/10/2024 17:17, Laurent Pinchart wrote:
>>> On Mon, Oct 28, 2024 at 12:30:45PM +0100, Hans Verkuil wrote:
>>>> On 28/10/2024 12:25, Tomi Valkeinen wrote:
>>>>> On 28/10/2024 13:13, Hans Verkuil wrote:
>>>>>> On 28/10/2024 12:05, Tomi Valkeinen wrote:
>>>>>>> On 28/10/2024 12:11, Hans Verkuil wrote:
>>>>>>>> On 28/10/2024 10:21, Tomi Valkeinen wrote:
>>>>>>>>> On 24/10/2024 11:20, Hans Verkuil wrote:
>>>>>>>>>> Hi Tomi,
>>>>>>>>>>
>>>>>>>>>> I know this driver is already merged, but while checking for drivers that use
>>>>>>>>>> q->max_num_buffers I stumbled on this cfe code:
>>>>>>>>>>
>>>>>>>>>> <snip>
>>>>>>>>>>
>>>>>>>>>>> +/*
>>>>>>>>>>> + * vb2 ops
>>>>>>>>>>> + */
>>>>>>>>>>> +
>>>>>>>>>>> +static int cfe_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers,
>>>>>>>>>>> +               unsigned int *nplanes, unsigned int sizes[],
>>>>>>>>>>> +               struct device *alloc_devs[])
>>>>>>>>>>> +{
>>>>>>>>>>> +    struct cfe_node *node = vb2_get_drv_priv(vq);
>>>>>>>>>>> +    struct cfe_device *cfe = node->cfe;
>>>>>>>>>>> +    unsigned int size = is_image_node(node) ?
>>>>>>>>>>> +                    node->vid_fmt.fmt.pix.sizeimage :
>>>>>>>>>>> +                    node->meta_fmt.fmt.meta.buffersize;
>>>>>>>>>>> +
>>>>>>>>>>> +    cfe_dbg(cfe, "%s: [%s] type:%u\n", __func__, node_desc[node->id].name,
>>>>>>>>>>> +        node->buffer_queue.type);
>>>>>>>>>>> +
>>>>>>>>>>> +    if (vq->max_num_buffers + *nbuffers < 3)
>>>>>>>>>>> +        *nbuffers = 3 - vq->max_num_buffers;
>>>>>>>>>>
>>>>>>>>>> This makes no sense: max_num_buffers is 32, unless explicitly set when vb2_queue_init
>>>>>>>>>> is called. So 32 + *nbuffers is never < 3.
>>>>>>>>>>
>>>>>>>>>> If the idea is that at least 3 buffers should be allocated by REQBUFS, then set
>>>>>>>>>> q->min_reqbufs_allocation = 3; before calling vb2_queue_init and vb2 will handle this
>>>>>>>>>> for you.
>>>>>>>>>>
>>>>>>>>>> Drivers shouldn't modify *nbuffers, except in very rare circumstances, especially
>>>>>>>>>> since the code is almost always wrong.
>>>>>>>>>
>>>>>>>>> Looking at this, the original code in the old BSP tree was, which somehow, along the long way, got turned into the above:
>>>>>>>>>
>>>>>>>>> if (vq->num_buffers + *nbuffers < 3)
>>>>>>>>>            *nbuffers = 3 - vq->num_buffers;
>>>>>>>>>
>>>>>>>>> So... I think that is the same as "q->min_reqbufs_allocation = 3"?
>>>>>>>>>
>>>>>>>>> The distinction between min_queued_buffers and
>>>>>>>>> min_reqbufs_allocation, or rather the need for the latter, still
>>>>>>>>> escapes me. If the HW/SW requires N buffers to be queued, why
>>>>>>>>> would we require allocating more than N buffers?
>>>>>>>>
>>>>>>>> min_queued_buffers is easiest to explain: that represents the requirements of the DMA
>>>>>>>> engine, i.e. how many buffers much be queued before the DMA engine can be started.
>>>>>>>> Typically it is 0, 1 or 2.
>>>
>>> That's partly true only. Even if the hardware requires 2 buffers, a
>>> driver can allocate scratch buffers to lower the requirement for
>>> userspace. Setting min_queued_buffers to 1 is usually fine, as there are
>>> few use cases for userspace to start the hardware before a buffer is
>>> available to capture a frame to. A value of 2 is much more problematic,
>>> as it prevents operating with a single buffer. I know using a single
>>> buffer results in frame drops, but there are resource-constrained
>>> systems where application don't always need all the frames (such as the
>>> Raspberry Pi Zero for instance). I very strongly encourage drivers to
>>> never set a min_queued_buffers value higher than 1.
>>>
>>>>>>>>
>>>>>>>> min_reqbufs_allocation is the minimum number of buffers that will be allocated when
>>>>>>>> calling VIDIOC_REQBUFS in order for userspace to be able to stream without blocking
>>>>>>>> or dropping frames.
>>>>>>>>
>>>>>>>> Typically this is 3 for video capture: one buffer is being DMAed, another is queued up
>>>>>>>> and the third is being processed by userspace. But sometimes drivers have other
>>>>>>>> requirements.
>>>
>>> This is exactly why I dislike min_reqbufs_allocation when set based on
>>> this logic, it encodes assumption on userspace use cases that a capture
>>> driver really shouldn't make.
>>>
>>>>>>>>
>>>>>>>> The reason is that some applications will just call VIDIOC_REQBUFS with count=1 and
>>>>>>>> expect it to be rounded up to whatever makes sense. See the VIDIOC_REQBUFS doc in
>>>>>>>> https://hverkuil.home.xs4all.nl/spec/userspace-api/v4l/vidioc-reqbufs.html
>>>>>>>>
>>>>>>>> "It can be smaller than the number requested, even zero, when the driver runs out of
>>>>>>>>     free memory. A larger number is also possible when the driver requires more buffers
>>>>>>>>     to function correctly."
>>>>>>>>
>>>>>>>> How drivers implement this is a mess, and usually the code in the driver is wrong as
>>>>>>>> well. In particular they often did not take VIDIOC_CREATE_BUFS into account, i.e.
>>>>>>>> instead of 'if (vq->num_buffers + *nbuffers < 3)' they would do 'if (*nbuffers < 3)'.
>>>>>>>
>>>>>>> Thanks, this was educational!
>>>>>>>
>>>>>>> So. If I have a driver that has min_queued_buffers = 1, I can use
>>>>>>> VIDIOC_CREATE_BUFS to allocate a single buffer, and then capture
>>>>>>> just one buffer, right? Whereas VIDIOC_REQBUFS would give me
>>>>>>> (probably) three (or two, if the driver does not set
>>>>>>> min_reqbufs_allocation). Three buffers makes sense for full
>>>>>>> streaming, of course.
>>>>>>>
>>>>>>>> When we worked on the support for more than 32 buffers we added min_reqbufs_allocation
>>>>>>>> to let the core take care of this. In addition, this only applies to VIDIOC_REQBUFS,
>>>
>>> I agree it's better to handle it in the core than in drivers, even if I
>>> dislike the feature in the first place.
>>>
>>>>>>>> if you want full control over the number of allocated buffers, then use VIDIOC_CREATE_BUFS,
>>>>>>>> with this ioctl the number of buffers will never be more than requested, although it
>>>>>>>> may be less if you run out of memory.
>>>
>>> On a side note, we should transition libcamera to use VIDIOC_CREATE_BUFS
>>> unconditionally.
>>>
>>>>>>>>
>>>>>>>> I really should go through all existing drivers and fix them up if they try to
>>>>>>>> handle this in the queue_setup function, I suspect a lot of them are quite messy.
>>>>>>>>
>>>>>>>> One thing that is missing in the V4L2 uAPI is a way to report the minimum number of
>>>>>>>> buffers that need to be allocated, i.e. min_queued_buffers + 1. Since if you want
>>>>>>>
>>>>>>> Hmm, so what I wrote above is not correct? One needs min_queued_buffers + 1? Why is that?
>>>>>>
>>>>>> The DMA engine always uses min_queued_buffers, so if there are only that many buffers,
>>>>>> then it can never return a buffer to userspace! So you need one more. That's the absolute
>>>>>> minimum. For smooth capture you need two more to allow time for userspace to process the
>>>>>> buffer.
>>>>>
>>>>> Hmm, ok, I see. Well, I guess my "I want to capture just a single frame" is not a very common case.
>>>
>>> It's not that uncommon, see above.
>>>
>>>>>
>>>>> Can I queue one buffer, start streaming, stop streaming, and get the
>>>>> filled buffer? But then I guess I don't when the buffer has been
>>>>> filled, i.e. when to call stop streaming.
>>>>
>>>> Exactly. If you really want that, then the driver has to be adapted in the way that Laurent
>>>> suggested, i.e. with one or more scratch buffers. But that is not always possible, esp. with
>>>> older hardware without an IOMMU.
>>>
>>> Drivers can always allocate a full-frame scratch buffer in the worst
>>> case. That can waste memory though, which is less than ideal.
>>>
>>>>> So, never mind, I don't actually have any use case for this, just wondering.
>>>>>
>>>>>>>
>>>>>>>> to use CREATE_BUFS you need that information so you know that you have to create
>>>>>>>> at least that number of buffers. We have the V4L2_CID_MIN_BUFFERS_FOR_CAPTURE control,
>>>>>>>> but it is effectively codec specific. This probably should be clarified.
>>>>>>>>
>>>>>>>> I wonder if it wouldn't be better to add a min_num_buffers field to
>>>>>>>> struct v4l2_create_buffers and set it to min_queued_buffers + 1.
>>>
>>> Don't add the +1. We should give userspace the information it needs to
>>> make informed decisions, not make decisions on its behalf.
>>>
>>>>>>>
>>>>>>> I think this makes sense (although I still don't get the +1).
>>>>>>>
>>>>>>> However, based on the experiences from adding the streams features
>>>>>>> to various ioctls, let's be very careful =). The new
>>>>>>> 'min_num_buffers' can be filled with garbage by the userspace. If
>>>>>>> we define the 'min_num_buffers' field to be always filled by the
>>>>>>> kernel, and any value provided from the userspace to be ignored, I
>>>>>>> think it should work.
>>>>>>
>>>>>> I've posted an RFC for this.
>>>>>
>>>>> Thanks, I'll check it out.
>>>>>
>>>>> For the original issue in this thread, I think the correct fix is to
>>>>> remove the lines from cfe_queue_setup(), and add
>>>>> "q->min_reqbufs_allocation = 3".
>>>
>>> Or just don't set min_reqbufs_allocation ? This is a new driver, and it
>>> requires a device-specific userspace to operate the ISP. I don't think
>>> we need to care about applications blindly calling VIDIOC_REQBUFS(1) and
>>> expecting to get more buffers.
>>
>> It doesn't require a device-specific userspace for plain CSI-2 capture.
>>
>> If I understood right, the expected behavior for VIDIOC_REQBUFS is to 
>> return enough buffers for "smooth streaming". So even if device-specific 
>> userspace would be required, doesn't it still make sense to have 
>> min_reqbufs_allocation = 3?
> 
> "Smooth streaming" is use case-dependent, you will need different number
> of buffers for different use cases. That's why I don't like hardcoding
> this in a video capture driver. I'd rather expose information about the
> driver behaviour (in particular, how many buffers it will hold on
> without returning anything to userspace until a new buffer gets queued)
> and let applications make a decision. I don't expect applications
> relying on VIDIOC_REQBUFS(1) to work out-of-the-box on Pi 5 anyway, as
> the media graph needs to be configured.
> 
>> Or is your point that even a device-specific userspace, which knows 
>> exactly what it's doing, would use VIDIOC_REQBUFS, instead of 
>> VIDIOC_CREATE_BUFS?
> 
> I expect a device-specific userspace not to require drivers to make
> policy decisions on its behalf.

Remember that libcamera is a specialized library that indeed wants to
make policy decisions itself. But many other drivers for much simpler
pipelines (typically for video receivers) don't need this and can use
the standard V4L2 API.

My goal is to have the standard V4L2 API behave in a well-defined manner,
while giving enough information to specialized userspace code like libcamera
to do their own thing.

Regards,

	Hans

> 
>> Also, if I don't set min_reqbufs_allocation, VIDIOC_REQBUFS(1) would 
>> still allocate two buffers, not one.
> 


